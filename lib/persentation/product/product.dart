import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:standart_project/application/product/product_bloc.dart';
import 'package:standart_project/domain/product/slot_model.dart';
import 'package:standart_project/persentation/core/utils/spacing/sizebox.dart';
import 'package:standart_project/persentation/core/utils/styles/text_style.dart';
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
import 'components/product_card.dart';
import 'components/title_product.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final CarouselController _controller = CarouselController();
  Timer? searchOnStoppedTyping;
  _onChangeHandler() {
    const duration = Duration(
        milliseconds:
            120000); // set the duration that you want call pop() after that.
    if (searchOnStoppedTyping != null) {
      searchOnStoppedTyping?.cancel(); // clear timer
    }
    searchOnStoppedTyping = Timer(duration, () => navigateHome());
  }

  @override
  void initState() {
    _onChangeHandler();
    super.initState();
  }

  navigateHome() {
    context.router.replaceAll([CaraouselRoute()]);
  }

  Future<void> popupCart(BuildContext parentContext) async {
    showDialog(
        barrierDismissible: false,
        context: parentContext,
        builder: (BuildContext context) {
          return BlocProvider.value(
              value: parentContext.read<ProductBloc>(),
              child: BlocConsumer<ProductBloc, ProductState>(
                  listener: (context, state) {
                state.failureOption.fold(() => null, (failure) {
                  failure.whenOrNull(unexpectedError: () {
                    customSnackBar(
                        content: const Text('Unexpected error occurred'),
                        context: context,
                        color: redColor);
                  }, noConnection: () {
                    // noConnection(context);
                  }, appException: (v) {
                    v.maybeMap(
                        unauthenticatedException: (_) {
                          AutoRouter.of(context).replaceAll([CaraouselRoute()]);
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
              },
                  builder: (context, state) {
                return Dialog(
                    backgroundColor: Colors.transparent,
                    insetPadding: padall12,
                    child: Wrap(children: [
                      PopupCart(
                        loading: state.isLoading,
                        listSlot: state.cart,
                        totalPrice: state.totalPrice,
                        onPay: () {
                          context
                              .read<ProductBloc>()
                              .add(const ProductEvent.submitCart());
                        },
                      )
                    ]));
              }));
        });
  }

  Future<void> popupDetail(
      BuildContext parentContext, SlotModel slotModel, int amount) async {
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
                        slotModel: slotModel,
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
                              ProductEvent.addAmount(slotModel, state.amount));
                          context.router.pop();
                        },
                      )
                    ]));
              }));
        });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<ProductBloc>()
          ..add(const ProductEvent.started(isRefresh: true)),
        child: Scaffold(
          body: LoaderOverlay(
              useDefaultLoading: false,
              overlayWidget: Center(
                  child: LoadingAnimationWidget.inkDrop(
                color: Colors.white,
                size: 150,
              )),
              child: GestureDetector(
                  //Use GestureDetector's behavior property and pass HitTestBehavior.opaque to it, which recognizes entire screen and detects the tap when you tap anywhere on the screen.
                  behavior: HitTestBehavior.opaque,
                  onTap: _onChangeHandler,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 260,
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
                                    if (state.isLoading &&
                                        !state.hasReachedMax) {
                                      return Center(
                                        child: LoadingAnimationWidget.inkDrop(
                                          color: primaryColor,
                                          size: 150,
                                        ),
                                      );
                                    } else if (state.items.slot!.isNotEmpty) {
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
                                                aspectRatio: 1,
                                                initialPage: state.currentPage,
                                                enableInfiniteScroll: false,
                                                viewportFraction: 1,
                                                onPageChanged: (index, reason) {
                                                  var newLast =
                                                      vSizeGrid * index;
                                                  var lastIndex = state.items
                                                              .slot!.length <
                                                          newLast
                                                      ? state.items.slot!.length
                                                      : newLast;
                                                  context
                                                      .read<ProductBloc>()
                                                      .add(ProductEvent
                                                          .changeIndexStarted(
                                                              lastIndex,
                                                              index));
                                                }),
                                            itemBuilder: (BuildContext context,
                                                int itemIndex,
                                                int pageViewIndex) {
                                              var lastIndex = state
                                                          .items.slot!.length <
                                                      (itemIndex + 1) *
                                                          vSizeGrid
                                                  ? state.items.slot!.length
                                                  : (itemIndex + 1) * vSizeGrid;
                                              List<SlotModel> model =
                                                  state.items.slot!.sublist(
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
                                                                    itemIndex -
                                                                        1);
                                                          }
                                                        },
                                                        icon: Icon(
                                                            Icons
                                                                .arrow_back_ios,
                                                            size: 50,
                                                            color: itemIndex ==
                                                                    0
                                                                ? primaryColor
                                                                    .withOpacity(
                                                                        0.5)
                                                                : primaryColor)),
                                                    Expanded(
                                                        child: GridView.count(
                                                      crossAxisCount: vGrid,
                                                      childAspectRatio: 0.67,
                                                      shrinkWrap: true,
                                                      padding: EdgeInsets.zero,
                                                      children: List.generate(
                                                          model.length,
                                                          (index) {
                                                        return ProductCard(
                                                            slotModel:
                                                                model[index],
                                                            addCart: () {
                                                              context
                                                                  .read<
                                                                      ProductBloc>()
                                                                  .add(ProductEvent.addAmount(
                                                                      model[
                                                                          index],
                                                                      model[index]
                                                                              .amount! +
                                                                          1));
                                                            },
                                                            onPopDetail: () {
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
                                                                    itemIndex +
                                                                        1);
                                                          }
                                                        },
                                                        icon: Icon(
                                                            Icons
                                                                .arrow_forward_ios,
                                                            size: 50,
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
                                        siboh32,
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: List.generate(
                                              state.totalPage, (index) {
                                            return CircleCaraousel(
                                                onTap: () => _controller
                                                    .animateToPage(index),
                                                color:
                                                    state.currentPage == index
                                                        ? primaryColor
                                                        : secondaryColor
                                                            .withOpacity(0.2));
                                          }).toList(),
                                        ),
                                      ]);
                                    } else if (state.items.slot!.isEmpty &&
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
                                              AppLocalizations.of(context)!
                                                  .no_data,
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
          bottomNavigationBar: Container(
            decoration: BoxDecoration(color: white, boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 2)
            ]),
            height: 309,
            child: Image.asset(
              '${vAssetPng}Iklan.png',
              fit: BoxFit.fill,
            ),
          ),
        ));
  }
}
