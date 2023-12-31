import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:standart_project/application/product/product_bloc.dart';
import 'package:standart_project/domain/product/product_model.dart';

import 'package:standart_project/persentation/core/utils/spacing/sizebox.dart';
import 'package:standart_project/persentation/core/utils/styles/text_style.dart';
import 'package:standart_project/persentation/product/components/popup_success.dart';
import 'package:standart_project/routes/app_router.dart';

import '../../app_constant.dart';
import '../../injection.dart';
import '../core/functions/unfocus_widget.dart';
import '../core/utils/spacing/padding.dart';
import '../core/utils/styles/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'components/button_arrow.dart';
import 'components/circle_caraousel.dart';
import 'components/popup_cart.dart';
import 'components/popup_detail.dart';
import 'components/popup_payment.dart';
import 'components/product_card.dart';
import 'components/title_product.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  navigateHome() {
    context.router.replaceAll([const CaraouselRoute()]);
  }

  Future<void> popupSuccess(BuildContext parentContext) async {
    showDialog(
        barrierDismissible: false,
        context: parentContext,
        builder: (BuildContext context) {
          return MultiBlocProvider(
              providers: [
                BlocProvider.value(value: parentContext.read<ProductBloc>()),
              ],
              child: Dialog(
                  backgroundColor: Colors.transparent,
                  insetPadding: padall12,
                  child: Wrap(children: [
                    PopupSuccess(
                      onClose: () {
                        parentContext.router
                            .replaceAll([const CaraouselRoute()]);
                      },
                    )
                  ])));
        });
  }

  Future<void> popupPayment(BuildContext parentContext) async {
    showDialog(
        barrierDismissible: false,
        context: parentContext,
        builder: (BuildContext context) {
          return MultiBlocProvider(
              providers: [
                BlocProvider.value(
                    value: parentContext.read<ProductBloc>()
                      ..add(const ProductEvent.submitCart())),
              ],
              child: BlocListener<ProductBloc, ProductState>(
                  listener: (context, state) {
                    state.failureOption.fold(() => null, (failure) {
                      failure.whenOrNull(unexpectedError: () {
                        customSnackBar(
                            content: const Text('Unexpected error occurred',
                                style: ts24White400),
                            context: context,
                            color: redColor);
                      }, noConnection: () {
                        // noConnection(context);
                      }, appException: (v) {
                        v.maybeMap(
                            unauthenticatedException: (_) {
                              AutoRouter.of(context)
                                  .replaceAll([CaraouselRoute()]);
                              customSnackBar(
                                  context: context,
                                  content: const Text(
                                    'Session timeout',
                                  ),
                                  color: redColor);
                            },
                            unexpectedException: (e) {
                              customSnackBar(
                                  context: context,
                                  content: Text(e.errorMessage!),
                                  color: redColor);
                            },
                            orElse: () => null);
                      });
                    });
                    if (state.isPay) {
                      Navigator.pop(context);
                      popupSuccess(parentContext);
                    }
                  },
                  child: Dialog(
                      backgroundColor: Colors.transparent,
                      insetPadding: padall12,
                      child: Wrap(children: [
                        PopupPayment(
                          onClose: () {
                            parentContext.router
                                .replaceAll([const CaraouselRoute()]);
                          },
                        )
                      ]))));
        });
  }

  Future<void> popupCart(BuildContext parentContext) async {
    showDialog(
        barrierDismissible: false,
        context: parentContext,
        builder: (BuildContext context) {
          return BlocProvider.value(
              value: parentContext.read<ProductBloc>(),
              child: BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                return Dialog(
                    backgroundColor: Colors.transparent,
                    insetPadding: padall12,
                    child: Wrap(children: [
                      PopupCart(
                        loading: state.isLoading,
                        listProduct: state.cart,
                        totalPrice: state.totalPrice,
                        onPay: () {
                          Navigator.pop(context);
                          popupPayment(parentContext);
                        },
                      )
                    ]));
              }));
        });
  }

  Future<void> popupDetail(
      BuildContext parentContext, ProductModel productModel, int amount) async {
    showDialog(
        barrierDismissible: false,
        context: parentContext,
        builder: (BuildContext context) {
          return BlocProvider.value(
              value: parentContext.read<ProductBloc>()
                ..add(ProductEvent.changeAmount(amount)),
              child: BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                return Dialog(
                    backgroundColor: Colors.transparent,
                    insetPadding: padall12,
                    child: Wrap(children: [
                      PopupDetail(
                        amount: state.amount,
                        productModel: productModel,
                        onAdd: () {
                          context
                              .read<ProductBloc>()
                              .add(ProductEvent.changeAmount(state.amount + 1));
                        },
                        onMin: () {
                          context
                              .read<ProductBloc>()
                              .add(ProductEvent.changeAmount(state.amount - 1));
                        },
                        onCart: () {
                          context.read<ProductBloc>().add(
                              ProductEvent.addAmount(
                                  productModel, state.amount));
                          context.router.pop();
                        },
                      )
                    ]));
              }));
        });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<ProductBloc>()
                ..add(const ProductEvent.started(isRefresh: true))),
        ],
        child: Scaffold(
          body: LoaderOverlay(
              useDefaultLoading: false,
              overlayWidget: Center(
                  child: LoadingAnimationWidget.inkDrop(
                color: Colors.white,
                size: 60,
              )),
              child: SafeArea(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 110,
                    width: double.infinity,
                    child: Image.asset(
                      '${vAssetPng}Howtouse.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  siboh8,
                  Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          padding: padall16,
                          child: BlocConsumer<ProductBloc, ProductState>(
                              listener: (context, state) {},
                              builder: (context, state) {
                                if (state.isLoading && !state.hasReachedMax) {
                                  return Center(
                                    child: LoadingAnimationWidget.inkDrop(
                                      color: primaryColor,
                                      size: 60,
                                    ),
                                  );
                                } else if (state.productModel.isNotEmpty) {
                                  return Column(children: [
                                    siboh24,
                                    TitleProduct(
                                      totalCart: state.totalCart,
                                      onTap: () => popupCart(context),
                                    ),
                                    siboh24,
                                    CarouselSlider.builder(
                                        itemCount: state.totalPage,
                                        carouselController: _controller,
                                        options: CarouselOptions(
                                            autoPlay: false,
                                            aspectRatio: 0.83,
                                            initialPage: state.currentPage,
                                            enableInfiniteScroll: false,
                                            viewportFraction: 1,
                                            onPageChanged: (index, reason) {
                                              var newLast = vSizeGrid * index;
                                              var lastIndex = state
                                                          .productModel.length <
                                                      newLast
                                                  ? state.productModel.length
                                                  : newLast;
                                              context.read<ProductBloc>().add(
                                                  ProductEvent
                                                      .changeIndexStarted(
                                                          lastIndex, index));
                                            }),
                                        itemBuilder: (BuildContext context,
                                            int itemIndex, int pageViewIndex) {
                                          var lastIndex = state
                                                      .productModel.length <
                                                  (itemIndex + 1) * vSizeGrid
                                              ? state.productModel.length
                                              : (itemIndex + 1) * vSizeGrid;
                                          List<ProductModel> model =
                                              state.productModel.sublist(
                                                  state.indexStarted,
                                                  lastIndex);
                                          return Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                sibow8,
                                                ButtonArrow(
                                                    onTap: () {
                                                      if (itemIndex != 0) {
                                                        _controller
                                                            .animateToPage(
                                                                itemIndex - 1);
                                                      }
                                                    },
                                                    icon: Icon(
                                                        Icons.arrow_back_ios,
                                                        size: 20,
                                                        color: itemIndex == 0
                                                            ? primaryColor
                                                                .withOpacity(
                                                                    0.5)
                                                            : primaryColor)),
                                                Expanded(
                                                    child: GridView.count(
                                                  crossAxisCount: vGrid,
                                                  childAspectRatio: 1.05,
                                                  shrinkWrap: true,
                                                  padding: EdgeInsets.zero,
                                                  children: List.generate(
                                                      model.length, (index) {
                                                    return ProductCard(
                                                        productModel:
                                                            model[index],
                                                        addCart: () {
                                                          context
                                                              .read<
                                                                  ProductBloc>()
                                                              .add(ProductEvent
                                                                  .addAmount(
                                                                      model[
                                                                          index],
                                                                      model[index]
                                                                              .amount! +
                                                                          1));
                                                        },
                                                        onPopDetail: () {
                                                          // popupSuccess(context);
                                                          popupDetail(
                                                              context,
                                                              model[index],
                                                              model[index]
                                                                  .amount!);
                                                        });
                                                  }),
                                                )),
                                                ButtonArrow(
                                                    onTap: () {
                                                      if ((state.totalPage -
                                                              1) !=
                                                          itemIndex) {
                                                        _controller
                                                            .animateToPage(
                                                                itemIndex + 1);
                                                      }
                                                    },
                                                    icon: Icon(
                                                        Icons.arrow_forward_ios,
                                                        size: 20,
                                                        color: (state.totalPage -
                                                                    1) ==
                                                                itemIndex
                                                            ? primaryColor
                                                                .withOpacity(
                                                                    0.5)
                                                            : primaryColor)),
                                                sibow8
                                              ]);
                                        }),
                                    siboh16,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: List.generate(state.totalPage,
                                          (index) {
                                        return CircleCaraousel(
                                            onTap: () => _controller
                                                .animateToPage(index),
                                            color: state.currentPage == index
                                                ? primaryColor
                                                : secondaryColor
                                                    .withOpacity(0.2));
                                      }).toList(),
                                    ),
                                  ]);
                                } else if (state.productModel.isEmpty &&
                                    state.hasReachedMax) {
                                  return Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        const Icon(
                                          Icons.clear_sharp,
                                          size: 24,
                                          color: primaryColor,
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!.no_data,
                                          style: ts14Black500,
                                        )
                                      ],
                                    ),
                                  );
                                } else {
                                  return const SizedBox();
                                }
                              })))
                ],
              ))),
        ));
  }
}
