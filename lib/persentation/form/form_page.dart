import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:standart_project/application/form/form_user_bloc.dart';
import 'package:standart_project/persentation/core/functions/button_field.dart';
import 'package:standart_project/persentation/core/functions/button_icon_leading.dart';
import 'package:standart_project/persentation/core/utils/border/border_radius.dart';
import 'package:standart_project/persentation/core/utils/spacing/padding.dart';
import 'package:standart_project/persentation/core/utils/spacing/sizebox.dart';
import 'package:standart_project/persentation/core/utils/styles/text_style.dart';
import 'package:standart_project/routes/app_router.dart';
import 'package:text_field/text_field.dart';

import '../../app_constant.dart';
import '../../common/exceptions/exceptions.dart';
import '../../injection.dart';
import '../core/functions/button_icon_bottom.dart';
import '../core/functions/unfocus_widget.dart';
import '../core/utils/styles/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FormPage extends StatefulWidget {
  FormPage({Key? key}) : super(key: key);
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  Timer? searchOnStoppedTyping; 
  final _key = GlobalKey<FormState>();
  _onChangeHandler() {
    const duration = Duration(
        milliseconds:
            150000); // set the duration that you want call pop() after that.
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

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            getIt<FormUserBloc>()..add(const FormUserEvent.started()),
        child: BlocConsumer<FormUserBloc, FormUserState>(
            listener: (context, state) {
          if (state.isLoading) {
            context.loaderOverlay.show();
          } else {
            context.loaderOverlay.hide();
          }
          state.failureOrSuccess.fold(
            () => null,
            (data) {
              data.fold(
                (failure) {
                  failure.maybeMap(
                    appException: (v) {
                      v.whenOrNull(appException: (f) {
                        if (f == AppException.badNetworkException()) {
                          noInternet(context, () {}, 'form');
                        }
                      });
                    },
                    invalidPhoneNumber: (_) {
                      customSnackBar(
                        context: context,
                        color: redColor,
                        duration: const Duration(milliseconds: 3000),
                        content:
                            Text(AppLocalizations.of(context)!.invalid_form),
                      );
                    },
                    phoneAlreadyInUse: (_) {
                      customSnackBar(
                        context: context,
                        color: redColor,
                        duration: const Duration(milliseconds: 3000),
                        content: Text(
                            AppLocalizations.of(context)!.phone_already_user),
                      );
                    },
                    orElse: () {},
                  );
                },
                (_) {
                  context.router.replace(ProductRoute());
                },
              );
            },
          );
        }, builder: (context, state) {
          return Scaffold(
            body: LoaderOverlay(
                useDefaultLoading: false,
                overlayWidget: Center(
                  child: LoadingAnimationWidget.inkDrop(
                    color: Colors.white,
                    size: 150,
                  ),
                ),
                child: Form(
                    key: _key,
                    child: GestureDetector(
                    //Use GestureDetector's behavior property and pass HitTestBehavior.opaque to it, which recognizes entire screen and detects the tap when you tap anywhere on the screen.
                    behavior: HitTestBehavior.opaque,
                    onTap: _onChangeHandler,
                    child: SingleChildScrollView(
                        child: Container(
                            height: MediaQuery.of(context).size.height - 309,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("${vAssetPng}Background.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Center(
                                child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        2 /
                                        3,
                                    decoration: BoxDecoration(
                                        borderRadius: borderRadius16,
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                "${vAssetPng}Card.png"),
                                            fit: BoxFit.fill)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          siboh108,
                                          siboh16,
                                          Text(
                                            AppLocalizations.of(context)!
                                                .title_form,
                                            style: ts34White600,
                                          ),
                                          siboh24,
                                          const SizedBox(
                                              width: 25,
                                              child: Divider(
                                                height: 10,
                                                color: white,
                                              )),
                                          siboh24,
                                          Text(
                                            AppLocalizations.of(context)!
                                                .subtitle_form,
                                            style: ts30White400,
                                          ),
                                          siboh16,
                                          Container(
                                            decoration: BoxDecoration(
                                                color: white,
                                                borderRadius: borderRadius16),
                                            padding: padall16,
                                            margin: padall4,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                siboh16,
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: InkWell(
                                                        onTap: () {
                                                          context.router
                                                              .replaceAll([
                                                            CaraouselRoute()
                                                          ]);
                                                        },
                                                        child: const Icon(
                                                          Icons.clear,
                                                          size: 25,
                                                          color: secondaryColor,
                                                        ))),
                                                CustomTextField(
                                                  cursorColor: primaryColor,
                                                  label: AppLocalizations.of(
                                                          context)!
                                                      .fullname,
                                                  fontSizeLabel: 32,
                                                  hint: AppLocalizations.of(
                                                          context)!
                                                      .fullname_ex,
                                                  fontSizeInput: 28,
                                                  colorInfo: secondaryColor,
                                                  colorInput: inputColor,
                                                  isNumber: false,
                                                  contentPadding: padall24,
                                                  colorBorder: secondaryColor,
                                                  colorFocus: primaryColor,
                                                  onChanged: (val) {
                                                    context
                                                        .read<FormUserBloc>()
                                                        .add(FormUserEvent
                                                            .fullnameChanged(
                                                                val));
                                                  },
                                                  validator: (val) {
                                                    if (val!.isEmpty) {
                                                      return AppLocalizations
                                                              .of(context)!
                                                          .fullname_cant_empty;
                                                    }
                                                  },
                                                ),
                                                siboh4,
                                                CustomTextField(
                                                  cursorColor: primaryColor,
                                                  label: AppLocalizations.of(
                                                          context)!
                                                      .email,
                                                  fontSizeLabel: 32,
                                                  hint: AppLocalizations.of(
                                                          context)!
                                                      .email_ex,
                                                  fontSizeInput: 28,
                                                  colorInfo: secondaryColor,
                                                  colorInput: inputColor,
                                                  contentPadding: padall24,
                                                  isNumber: false,
                                                  colorBorder: secondaryColor,
                                                  colorFocus: primaryColor,
                                                  onChanged: (val) {
                                                    context
                                                        .read<FormUserBloc>()
                                                        .add(FormUserEvent
                                                            .emailChanged(val));
                                                  },
                                                  validator: (val) {
                                                    RegExp regEmail = RegExp(
                                                        r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
                                                    if (val!.isEmpty) {
                                                      return AppLocalizations
                                                              .of(context)!
                                                          .email_cant_empty;
                                                    } else if (!regEmail
                                                        .hasMatch(val)) {
                                                      return AppLocalizations
                                                              .of(context)!
                                                          .email_not_valid;
                                                    }
                                                  },
                                                ),
                                                siboh4,
                                                CustomTextField(
                                                  cursorColor: primaryColor,
                                                  label: AppLocalizations.of(
                                                          context)!
                                                      .phone,
                                                  fontSizeLabel: 32,
                                                  hint: AppLocalizations.of(
                                                          context)!
                                                      .phone_ex,
                                                  fontSizeInput: 28,
                                                  contentPadding: padall24,
                                                  colorInfo: secondaryColor,
                                                  colorInput: inputColor,
                                                  isNumber: true,
                                                  colorBorder: secondaryColor,
                                                  colorFocus: primaryColor,
                                                  onChanged: (val) {
                                                    context
                                                        .read<FormUserBloc>()
                                                        .add(FormUserEvent
                                                            .phoneChanged(val));
                                                  },
                                                  validator: (val) {
                                                    RegExp regPhone = RegExp(
                                                        r"^(?=\d{9,13}$)(08)\d+");
                                                    if (val!.isEmpty) {
                                                      return AppLocalizations
                                                              .of(context)!
                                                          .phone_cant_empty;
                                                    } else if (!regPhone
                                                        .hasMatch(val)) {
                                                      return AppLocalizations
                                                              .of(context)!
                                                          .phone_not_valid;
                                                    }
                                                  },
                                                ),
                                                siboh16,
                                                Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 56),
                                                    child: ButtonIconBottom(
                                                      onTap: () {
                                                            if (_key.currentState!
                                                                    .validate() &&
                                                                !state
                                                                    .isLoading) {
                                                              FocusManager
                                                                  .instance
                                                                  .primaryFocus
                                                                  ?.unfocus();
                                                        context
                                                            .read<
                                                                FormUserBloc>()
                                                            .add(const FormUserEvent
                                                                    .submited(
                                                                isLoading:
                                                                    true));
                                                            }
                                                      },
                                                      heigh: 90,
                                                      widget: const Icon(
                                                        Icons.play_arrow,
                                                        color: white,
                                                        size: 25,
                                                      ),
                                                      sibow: sibow16,
                                                      color: primaryColor,
                                                      titleStyle: ts24White400,
                                                      borderRadius:
                                                          borderRadius12,
                                                      title:
                                                          AppLocalizations.of(
                                                                  context)!
                                                              .submit,
                                                    )),
                                                // siboh20,
                                                // Text(
                                                //     AppLocalizations.of(
                                                //             context)!
                                                //         .powered_by,
                                                //     style: ts24Black400),
                                                // siboh4,
                                                // SizedBox(
                                                //   height: 75,
                                                //   child: Image.asset(
                                                //     "${vAssetPng}monstergroup.png",
                                                //     fit: BoxFit.fill,
                                                //   ),
                                                // )
                                              ],
                                            ),
                                          )
                                            ])))))))),
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
          );
        }));
  }
}
