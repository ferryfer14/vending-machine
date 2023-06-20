import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:standart_project/application/auth/sign_in/sign_in_bloc.dart';
import 'package:standart_project/application/caraousel/caraousel_bloc.dart';
import 'package:standart_project/persentation/core/functions/button_icon_leading.dart';
import 'package:standart_project/persentation/core/functions/unfocus_widget.dart';
import 'package:standart_project/persentation/core/utils/spacing/sizebox.dart';
import 'package:standart_project/persentation/core/utils/styles/text_style.dart';
import 'package:standart_project/routes/app_router.dart';

import '../../app_constant.dart';
import '../../common/exceptions/exceptions.dart';
import '../../injection.dart';
import '../core/functions/button_field.dart';
import '../core/utils/spacing/padding.dart';
import '../core/utils/styles/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CaraouselPage extends StatelessWidget {
  const CaraouselPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<CaraouselBloc>()
                ..add(const CaraouselEvent.started(isRefresh: true))),
          BlocProvider(
              create: (context) =>
                  getIt<SignInBloc>()..add(const SignInEvent.loginForm())),
        ],
        child:
            BlocConsumer<SignInBloc, SignInState>(listener: (context, state) {
          if (state.isLoading) {
            context.loaderOverlay.show();
          } else {
            context.loaderOverlay.hide();
          }
          state.loginFailureOrSuccess.fold(
            () => null,
            (data) {
              data.fold(
                (failure) {
                  failure.whenOrNull(
                    appException: (v) {
                    v.maybeMap(
                        badNetworkException: (_) {
                          noInternet(context, () {}, 'caraousel');
                        },
                        orElse: () => null);
                  }, invalidUsernameAndPassword: () {
                      customSnackBar(
                        context: context,
                        color: redColor,
                        duration: const Duration(milliseconds: 3000),
                        content:
                            Text(AppLocalizations.of(context)!.invalid_form),
                      );
                  }
                  );
                },
                (_) {
                  context.router.replace(ProductRoute());
                },
              );
            },
          );
        }, builder: (context, state) {
          return BlocBuilder<CaraouselBloc, CaraouselState>(
              builder: (context, state) {
            if (state.isLoading) {
              return const SizedBox();
            }
            return Scaffold(
              body: LoaderOverlay(
                  useDefaultLoading: false,
                  overlayWidget: Center(
                    child: LoadingAnimationWidget.inkDrop(
                      color: Colors.white,
                      size: 150,
                    ),
                  ),
                  child: SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: CarouselSlider(
                        options: CarouselOptions(
                            viewportFraction: 1.0,
                            aspectRatio: 9 / 16,
                            enlargeCenterPage: false,
                            padEnds: false,
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 1000),
                            autoPlayInterval: const Duration(seconds: 15),
                            initialPage: 0,
                            autoPlay: true),
                        items: state.items.map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return InkWell(
                                  onTap: () {
                                    context.read<SignInBloc>().add(
                                        const SignInEvent.loginForm(
                                            isSubmitting: true));
                                  },
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Image.asset(
                                      "$vAssetPng${i.images}",
                                      fit: BoxFit.fill,
                                    ),
                                  ));
                            },
                          );
                        }).toList(),
                      ))),
              bottomNavigationBar: Container(
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 2)
                ]),
                height: 120,
                child: ButtonIconLeading(
                  onTap: () {
                    context
                        .read<SignInBloc>()
                        .add(const SignInEvent.loginForm(isSubmitting: true));
                  },
                  color: primaryColor,
                  widget: SvgPicture.asset(
                    "${vAssetSvg}touch.svg",
                    height: 60,
                  ),
                  sibow: sibow16,
                  borderRadius: BorderRadius.circular(0),
                  title: AppLocalizations.of(context)!.start,
                  titleStyle: ts24White600,
                ),
              ),
            );
          });
        }));
  }
}
