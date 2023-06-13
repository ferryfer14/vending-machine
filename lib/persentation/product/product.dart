import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as dz;
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:standart_project/application/caraousel/caraousel_bloc.dart';
import 'package:standart_project/application/product/product_bloc.dart';
import 'package:standart_project/application/transaction/transaction_bloc.dart';
import 'package:standart_project/domain/product/slot_model.dart';
import 'package:standart_project/persentation/core/functions/button_icon_bottom.dart';
import 'package:standart_project/persentation/core/functions/button_icon_leading.dart';
import 'package:standart_project/persentation/core/utils/spacing/sizebox.dart';
import 'package:standart_project/persentation/core/utils/styles/text_style.dart';
import 'package:standart_project/routes/app_router.dart';

import '../../app_constant.dart';
import '../../common/exceptions/exceptions.dart';
import '../../injection.dart';
import '../core/functions/button_field.dart';
import '../core/functions/currency_format.dart';
import '../core/functions/unfocus_widget.dart';
import '../core/utils/border/border_radius.dart';
import '../core/utils/spacing/padding.dart';
import '../core/utils/styles/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'components/shimmer_product.dart';
import 'package:image_network/image_network.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  Timer? searchOnStoppedTyping;
  _onChangeHandler() {
    const duration = Duration(
        milliseconds:
            120000); // set the duration that you want call pop() after that.
    if (searchOnStoppedTyping != null) {
      searchOnStoppedTyping?.cancel(); // clear timer
    }
    searchOnStoppedTyping = new Timer(duration, () => navigateHome());
  }

  @override
  void initState() {
    _onChangeHandler();
    super.initState();
  }

  navigateHome() {
    context.router.replaceAll([CaraouselRoute()]);
  }

  Future<void> popupFailed(BuildContext parentContext, SlotModel slotModel,
      int slot_id, int transaction_id, bool status_drop) async {
    showModalBottomSheet(
        context: context,
        isDismissible: false,
        builder: (context) {
          return BlocProvider(
              create: (context) => getIt<TransactionBloc>()
                ..add(const TransactionEvent.started()),
              child: BlocConsumer<TransactionBloc, TransactionState>(
                  listener: (context, state) {
                if (state.failureOption == dz.none() &&
                    state.transaction_id != 0) {
                  Timer(const Duration(seconds: 6), () {
                    context.router.replaceAll([CaraouselRoute()]);
                  });
                }
                state.failureOption.fold(() => null, (failure) {
                  failure.maybeMap(
                    appException: (v) {
                      v.whenOrNull(appException: (f) {
                        if (f == AppException.badNetworkException()) {
                          noInternet(context, () {}, '');
                        } else if (f ==
                            AppException.unauthenticatedException()) {
                          context.router.replaceAll([CaraouselRoute()]);
                        }
                      });
                    },
                    unexpectedError: (_) {
                      customSnackBar(
                        context: context,
                        color: redColor,
                        duration: const Duration(milliseconds: 3000),
                        content: Text(AppLocalizations.of(context)!.error),
                      );
                    },
                    orElse: () {},
                  );
                });
              }, builder: (context, state) {
                if (state.transaction_id == 0) {
                  context.read<TransactionBloc>().add(TransactionEvent.success(
                      slot_id, transaction_id, status_drop,
                      isLoading: true));
                }
                return Stack(alignment: Alignment.center, children: [
                  Positioned.fill(
                      top: 0,
                      child: Column(
                        children: <Widget>[
                          siboh32,
                          Row(
                            children: [
                              sibow16,
                              Expanded(
                                child: Text(
                                    AppLocalizations.of(parentContext)!.release,
                                    style: ts32Black600),
                              ),
                              SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: InkWell(
                                    onTap: () {
                                      context.router
                                          .replaceAll([CaraouselRoute()]);
                                    },
                                    child: const Icon(Icons.clear,
                                        size: 36, color: secondaryColor),
                                  )),
                              sibow16,
                            ],
                          ),
                          siboh24,
                          const Divider(
                            height: 10,
                            thickness: 5,
                            color: backgroundImage,
                          ),
                          siboh24,
                          const SizedBox(
                            height: 50,
                            width: 50,
                            child:
                                Icon(Icons.clear, size: 36, color: Colors.red),
                          ),
                          siboh16,
                          Text(AppLocalizations.of(parentContext)!.failed,
                              style: ts32Black600),
                          siboh8,
                          SizedBox(
                            width: 500,
                            child: Text(
                                AppLocalizations.of(parentContext)!.des_failed,
                                textAlign: TextAlign.center,
                                style: ts24Black400),
                          ),
                          siboh32,
                          Row(
                            children: [
                              sibow16,
                              SizedBox(
                                  height: 200,
                                  width: 200,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: backgroundImage,
                                      ),
                                      child: ImageNetwork(
                                        image: slotModel.product!.image!,
                                        height: 200,
                                        width: 200,
                                        fitWeb: BoxFitWeb.fill,
                                      ))),
                              Expanded(
                                  child: Text(slotModel.product!.name!,
                                      textAlign: TextAlign.left,
                                      style: ts32Black400)),
                              const Icon(Icons.clear,
                                  size: 36, color: Colors.red),
                              sibow8,
                              Text(AppLocalizations.of(parentContext)!.fail,
                                  textAlign: TextAlign.center,
                                  style: ts32Primary400),
                              sibow16
                            ],
                          )
                        ],
                      )),
                  // Positioned(
                  //     bottom: 50,
                  //     child: Column(
                  //       children: [
                  //         Text(AppLocalizations.of(context)!.getonbot,
                  //             style: ts32Primary400),
                  //         siboh16,
                  //         SvgPicture.asset(
                  //           '${vAssetSvg}arrow.svg',
                  //           color: primaryColor,
                  //           width: 36,
                  //           height: 36,
                  //         )
                  //       ],
                  //     ))
                ]);
              }));
        });
  }

  Future<void> popupSuccess(BuildContext parentContext, SlotModel slotModel,
      int slot_id, int transaction_id, bool status_drop) async {
    showModalBottomSheet(
        context: context,
        isDismissible: false,
        builder: (context) {
          return BlocProvider(
              create: (context) => getIt<TransactionBloc>()
                ..add(const TransactionEvent.started()),
              child: BlocConsumer<TransactionBloc, TransactionState>(
                  listener: (context, state) {
                if (state.failureOption == dz.none() &&
                    state.transaction_id != 0) {
                  Timer(const Duration(seconds: 6), () {
                    context.router.replaceAll([CaraouselRoute()]);
                  });
                }
                state.failureOption.fold(() => null, (failure) {
                  failure.maybeMap(
                    appException: (v) {
                      v.whenOrNull(appException: (f) {
                        if (f == AppException.badNetworkException()) {
                          noInternet(context, () {}, '');
                        } else if (f ==
                            AppException.unauthenticatedException()) {
                          context.router.replaceAll([CaraouselRoute()]);
                        }
                      });
                    },
                    unexpectedError: (_) {
                      customSnackBar(
                        context: context,
                        color: redColor,
                        duration: const Duration(milliseconds: 3000),
                        content: Text(AppLocalizations.of(context)!.error),
                      );
                    },
                    orElse: () {},
                  );
                });
              }, builder: (context, state) {
                if (state.transaction_id == 0) {
                  context.read<TransactionBloc>().add(TransactionEvent.success(
                      slot_id, transaction_id, status_drop,
                      isLoading: true));
                }
                return Stack(alignment: Alignment.center, children: [
                  Positioned.fill(
                      top: 0,
                      child: Column(
                        children: <Widget>[
                          siboh32,
                          Row(
                            children: [
                              sibow16,
                              Expanded(
                                child: Text(
                                    AppLocalizations.of(parentContext)!.release,
                                    style: ts32Black600),
                              ),
                              SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: InkWell(
                                    onTap: () {
                                      context.router
                                          .replaceAll([CaraouselRoute()]);
                                    },
                                    child: const Icon(Icons.clear,
                                        size: 36, color: secondaryColor),
                                  )),
                              sibow16,
                            ],
                          ),
                          siboh24,
                          const Divider(
                            height: 10,
                            thickness: 5,
                            color: backgroundImage,
                          ),
                          siboh24,
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset("${vAssetPng}done.png",
                                fit: BoxFit.fill),
                          ),
                          siboh16,
                          Text(AppLocalizations.of(parentContext)!.success,
                              style: ts32Black600),
                          siboh8,
                          SizedBox(
                            width: 500,
                            child: Text(
                                AppLocalizations.of(parentContext)!.des_success,
                                textAlign: TextAlign.center,
                                style: ts24Black400),
                          ),
                          siboh32,
                          Row(
                            children: [
                              sibow16,
                              SizedBox(
                                  height: 200,
                                  width: 200,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: backgroundImage,
                                      ),
                                      child: ImageNetwork(
                                        image: slotModel.product!.image!,
                                        height: 200,
                                        width: 200,
                                        fitWeb: BoxFitWeb.cover,
                                      ))),
                              Expanded(
                                  child: Text(slotModel.product!.name!,
                                      textAlign: TextAlign.left,
                                      style: ts32Black400)),
                              SvgPicture.asset(
                                "${vAssetSvg}success.svg",
                                color: primaryColor,
                                width: 36,
                                height: 36,
                              ),
                              sibow8,
                              Text(
                                  AppLocalizations.of(parentContext)!.onrelease,
                                  textAlign: TextAlign.center,
                                  style: ts32Primary400),
                              sibow16
                            ],
                          )
                        ],
                      )),
                  Positioned(
                      bottom: 50,
                      child: Column(
                        children: [
                          Text(AppLocalizations.of(context)!.getonbot,
                              style: ts32Primary400),
                          siboh16,
                          SvgPicture.asset(
                            '${vAssetSvg}arrow.svg',
                            color: primaryColor,
                            width: 36,
                            height: 36,
                          )
                        ],
                      ))
                ]);
              }));
        });
  }

  Future<void> popupRelease(BuildContext parentContext, SlotModel slotModel,
      int slot_id, int transaction_id, String slot_name) async {
    showModalBottomSheet(
        context: context,
        isDismissible: false,
        builder: (context) {
          return BlocProvider(
              create: (context) => getIt<TransactionBloc>()
                ..add(const TransactionEvent.started()),
              child: BlocConsumer<TransactionBloc, TransactionState>(
                  listener: (context, state) {
                if (state.transaction_id != 0 &&
                    state.status_drop == true) {
                  Navigator.pop(context);
                  popupSuccess(parentContext, slotModel, state.slot_id,
                      state.transaction_id, state.status_drop!);
                }
                state.failureOption.fold(() => null, (failure) {
                  failure.maybeMap(
                    appException: (v) {
                      v.whenOrNull(appException: (f) {
                        if (f == AppException.badNetworkException()) {
                          noInternet(context, () {}, '');
                        } else if (f ==
                            AppException.unauthenticatedException()) {
                          context.router.replaceAll([CaraouselRoute()]);
                        }
                      });
                    },
                    unexpectedError: (_) {
                      Navigator.pop(context);
                      popupFailed(parentContext, slotModel, state.slot_id,
                          state.transaction_id, state.status_drop!);
                    },
                    orElse: () {},
                  );
                });
              }, builder: (context, state) {
                if (state.transaction_id == 0) {
                  context.read<TransactionBloc>().add(TransactionEvent.drop(
                      slot_id, transaction_id, slot_name,
                      isLoading: true));
                }
                return Stack(alignment: Alignment.center, children: [
                  Positioned.fill(
                      top: 0,
                      child: Column(
                        children: <Widget>[
                          siboh32,
                          Row(
                            children: [
                              sibow16,
                              Expanded(
                                child: Text(
                                    AppLocalizations.of(parentContext)!.waiting,
                                    style: ts32Black600),
                              ),
                              SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: InkWell(
                                    onTap: () {
                                      context.router.pop();
                                    },
                                    child: const Icon(Icons.clear,
                                        size: 36, color: secondaryColor),
                                  )),
                              sibow16,
                            ],
                          ),
                          siboh24,
                          const Divider(
                            height: 10,
                            thickness: 5,
                            color: backgroundImage,
                          ),
                          siboh24,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.access_time_filled_rounded,
                                  color: primaryColor, size: 36),
                              sibow16,
                              Text(
                                  AppLocalizations.of(parentContext)!.processed,
                                  style: ts32Black400),
                            ],
                          ),
                          siboh8,
                          SizedBox(
                            width: 500,
                            child: Text(
                                AppLocalizations.of(parentContext)!.des_release,
                                textAlign: TextAlign.center,
                                style: ts24Black400),
                          ),
                          siboh32,
                          Row(
                            children: [
                              sibow16,
                              SizedBox(
                                  height: 200,
                                  width: 200,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: backgroundImage,
                                      ),
                                      child: ImageNetwork(
                                        image: slotModel.product!.image!,
                                        height: 200,
                                        width: 200,
                                        fitWeb: BoxFitWeb.cover,
                                      ))),
                              Expanded(
                                  child: Text(slotModel.product!.name!,
                                      textAlign: TextAlign.left,
                                      style: ts32Black400)),
                              const CircularProgressIndicator(
                                color: primaryColor,
                              ),
                              sibow8,
                              Text(
                                  AppLocalizations.of(parentContext)!.onprosess,
                                  textAlign: TextAlign.center,
                                  style: ts32Primary400),
                              sibow16
                            ],
                          )
                        ],
                      )),
                  Positioned(
                      bottom: 50,
                      child: Column(
                        children: [
                          Text(AppLocalizations.of(context)!.getonbot,
                              style: ts32Primary400),
                          siboh16,
                          SvgPicture.asset(
                            '${vAssetSvg}arrow.svg',
                            color: primaryColor,
                            width: 36,
                            height: 36,
                          ),
                          siboh32
                        ],
                      ))
                ]);
              }));
        });
  }

  Future<void> popupDetail(
      BuildContext parentContext, SlotModel slotModel) async {
    showDialog(
        barrierDismissible: false,
        context: parentContext,
        builder: (BuildContext context) {
          return BlocProvider(
              create: (context) => getIt<TransactionBloc>()
                ..add(const TransactionEvent.started()),
              child: BlocConsumer<TransactionBloc, TransactionState>(
                  listener: (context, state) {
                if (state.failureOption == dz.none() &&
                    state.transaction_id != 0) {
                  Navigator.pop(context);
                  popupRelease(parentContext, slotModel, state.slot_id,
                      state.transaction_id, state.slot_name);
                }
                state.failureOption.fold(() => null, (failure) {
                  failure.maybeMap(
                    appException: (v) {
                      v.whenOrNull(appException: (f) {
                        if (f == AppException.badNetworkException()) {
                          noInternet(context, () {}, '');
                        } else if (f ==
                            AppException.unauthenticatedException()) {
                          context.router.replaceAll([CaraouselRoute()]);
                        }
                      });
                    },
                    unexpectedError: (_) {
                      customSnackBar(
                        context: context,
                        color: redColor,
                        duration: const Duration(milliseconds: 3000),
                        content: Text(AppLocalizations.of(context)!.error),
                      );
                    },
                    orElse: () {},
                  );
                });
              }, builder: (context, state) {
                return Dialog(
                    backgroundColor: Colors.transparent,
                    insetPadding: padall12,
                    child: Wrap(children: [
                      Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: white,
                          ),
                          child: Column(
                            children: [
                              siboh32,
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                        AppLocalizations.of(parentContext)!
                                            .detail_product,
                                        textAlign: TextAlign.center,
                                        style: ts32Black600),
                                  ),
                                  SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: InkWell(
                                        onTap: () {
                                          context.router.pop();
                                        },
                                        child: const Icon(Icons.clear,
                                            size: 36, color: secondaryColor),
                                      )),
                                  sibow16,
                                ],
                              ),
                              siboh24,
                              const Divider(
                                height: 10,
                                thickness: 5,
                                color: backgroundImage,
                              ),
                              siboh24,
                              Container(
                                  decoration: BoxDecoration(
                                    color: backgroundImage,
                                  ),
                                  height: 400,
                                  child: ImageNetwork(
                                    image: slotModel.product!.image!,
                                    height: 400,
                                    width: 400,
                                    fitWeb: BoxFitWeb.cover,
                                  )),
                              siboh16,
                              Text(slotModel.product!.name!,
                                  style: ts36Black600),
                              siboh24,
                              Text(slotModel.product!.description!,
                                  style: ts24Black400),
                              siboh24,
                              SizedBox(
                                height: 125,
                                width: 475,
                                child: ButtonIconBottom(
                                    onTap: () {
                                      context.read<TransactionBloc>().add(
                                          TransactionEvent.submited(
                                              slotModel.id!, slotModel.name!,
                                              isLoading: true));
                                    },
                                    color: primaryColor,
                                    title:
                                        AppLocalizations.of(context)!.process,
                                    titleStyle: ts32White500,
                                    borderRadius: borderRadius16,
                                    widget: SvgPicture.asset(
                                      '${vAssetSvg}ArrowLineDown.svg',
                                      width: 48,
                                      height: 48,
                                      color: white,
                                    )),
                              ),
                              siboh32,
                            ],
                          ))
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
          body: GestureDetector(
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
                      '${vAssetPng}promo1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  siboh8,
                  Expanded(
                      child: Center(
                          child: Column(
                    children: [
                      siboh24,
                      Text(AppLocalizations.of(context)!.our_item,
                          style: ts32Black600),
                      siboh24,
                      BlocConsumer<ProductBloc, ProductState>(
                          listener: (context, state) {
                        if (state.items.slot!.isNotEmpty) {
                          setState(() {
                            _current = state.page - 1;
                          });
                        }
                      }, builder: (context, state) {
                        if (state.isLoading && !state.hasReachedMax) {
                          return Expanded(
                              child: Center(
                            child: LoadingAnimationWidget.inkDrop(
                              color: primaryColor,
                              size: 150,
                            ),
                          ));
                        } else if (state.items.slot!.isNotEmpty) {
                          return Expanded(
                                      child: Column(children: [
                            CarouselSlider.builder(
                                itemCount: state.items.total_pages,
                                carouselController: _controller,
                                options: CarouselOptions(
                                    autoPlay: false,
                                    aspectRatio: 1,
                                    initialPage: state.page - 1,
                                    enableInfiniteScroll: false,
                                    viewportFraction: 1,
                                    onPageChanged: (index, reason) {
                                      print(index);
                                      context.read<ProductBloc>().add(
                                          ProductEvent.loadMore(index + 1,
                                              isLoad: true));
                                    }),
                                itemBuilder: (BuildContext context,
                                    int itemIndex, int pageViewIndex) {
                                  List<SlotModel> model = state.items.slot!;
                                  return GridView.count(
                                    crossAxisCount: vGrid,
                                    childAspectRatio: 0.96,
                                    shrinkWrap: true,
                                    children:
                                        List.generate(model.length, (index) {
                                      return Container(
                                        margin: padall8,
                                        decoration: BoxDecoration(
                                          color: backgroundImage,
                                          border: Border.all(
                                              color: secondaryColor
                                                  .withOpacity(0.2),
                                              width: 1),
                                          borderRadius: borderRadius16,
                                        ),
                                        child: ClipRRect(
                                            borderRadius: borderRadius16,
                                            child: Column(
                                              children: [
                                                Container(
                                                    height: 208,
                                                    decoration: BoxDecoration(
                                                      color: backgroundImage,
                                                    ),
                                                    child: ImageNetwork(
                                                      image:
                                                          '${model[index].product!.image}',
                                                      height: 208,
                                                      width: 208,
                                                      fitWeb: BoxFitWeb.fill,
                                                    )),
                                                Container(
                                                    color: white,
                                                    width: double.infinity,
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 16,
                                                            right: 16,
                                                            bottom: 32,
                                                            top: 16),
                                                    child: Text(
                                                        '${model[index].product!.name}',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: ts20Black500)),
                                                Expanded(
                                                    child: model[index].stock ==
                                                            0
                                                        ? PrimaryButton(
                                                            color:
                                                                buttonDisable,
                                                            title: AppLocalizations
                                                                    .of(context)!
                                                                .out_of_stock,
                                                            titleStyle:
                                                                ts20White500,
                                                            borderRadius:
                                                                borderRadius0,
                                                          )
                                                        : ButtonIconBottom(
                                                            onTap: () {
                                                              popupDetail(
                                                                  context,
                                                                  model[index]);
                                                            },
                                                            color: primaryColor,
                                                            title: AppLocalizations
                                                                    .of(
                                                                        context)!
                                                                .process,
                                                            titleStyle:
                                                                ts20White500,
                                                            borderRadius:
                                                                borderRadius0,
                                                            widget: SvgPicture
                                                                .asset(
                                                              '${vAssetSvg}ArrowLineDown.svg',
                                                              width: 32,
                                                              height: 32,
                                                              color: white,
                                                            )))
                                              ],
                                            )),
                                      );
                                    }),
                                  );
                                }),
                            siboh32,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(state.items.total_pages!,
                                  (index) {
                                return GestureDetector(
                                  onTap: () => _controller.animateToPage(index),
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 16.0, horizontal: 8.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: _current == index
                                            ? primaryColor
                                            : secondaryColor.withOpacity(0.2)),
                                  ),
                                );
                              }).toList(),
                            ),
                          ]));
                        } else if (state.items.slot!.isEmpty &&
                            state.hasReachedMax) {
                          return Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
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
                      })
                    ],
                  )))
                ],
              )),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(color: white, boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 2)
            ]),
            height: 309,
            child: Image.asset(
              '${vAssetPng}promo2.png',
              fit: BoxFit.fill,
            ),
          ),
        ));
  }
}
