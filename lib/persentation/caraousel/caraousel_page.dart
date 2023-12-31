import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:standart_project/application/caraousel/caraousel_bloc.dart';
import 'package:standart_project/persentation/core/components/button_icon_leading.dart';
import 'package:standart_project/persentation/core/functions/unfocus_widget.dart';
import 'package:standart_project/persentation/core/utils/spacing/sizebox.dart';
import 'package:standart_project/persentation/core/utils/styles/text_style.dart';
import 'package:standart_project/routes/app_router.dart';

import '../../app_constant.dart';
import '../../common/exceptions/exceptions.dart';
import '../../injection.dart';
import '../core/components/button_field.dart';
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
        ],
        child: BlocBuilder<CaraouselBloc, CaraouselState>(
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
                    size: 60,
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
                                  context.router.replace(const ProductRoute());
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
              height: 60,
              child: ButtonIconLeading(
                onTap: () {
                  context.router.replace(const ProductRoute());
                },
                color: primaryColor,
                widget: SvgPicture.asset(
                  "${vAssetSvg}touch.svg",
                  height: 20,
                ),
                sibow: sibow16,
                borderRadius: BorderRadius.circular(0),
                title: AppLocalizations.of(context)!.start,
                titleStyle: ts14White600,
              ),
            ),
          );
        }));
  }
}
