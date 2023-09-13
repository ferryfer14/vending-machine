import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:standart_project/injection.dart';
import 'package:standart_project/persentation/core/utils/border/border_radius.dart';
import 'package:standart_project/persentation/core/utils/spacing/padding.dart';
import 'package:standart_project/persentation/core/utils/spacing/sizebox.dart';
import 'package:standart_project/persentation/core/utils/styles/colors.dart';
import 'package:standart_project/persentation/core/utils/styles/text_style.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../application/auth/sign_in/sign_in_bloc.dart';
import '../components/button_field.dart';

class UnfocusWidget extends StatelessWidget {
  const UnfocusWidget({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: child,
    );
  }
}

Future<void> noInternet(BuildContext parentContext, ontap, String route,
    {String status = '', int id = 0}) async {
  showDialog(
      barrierDismissible: false,
      context: parentContext,
      builder: (BuildContext context) {
        return MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => getIt<SignInBloc>()),
            ],
            child: Dialog(
                backgroundColor: Colors.transparent,
                insetPadding: padall12,
                child: Wrap(children: [
                  Container(
                      width: double.infinity,
                      padding: padall16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: white,
                      ),
                      child: Column(
                        children: [
                          Text(
                              AppLocalizations.of(parentContext)!
                                  .title_lost_connection,
                              style: ts36Black600),
                          siboh32,
                          Text(
                              AppLocalizations.of(parentContext)!
                                  .detail_lost_connection,
                              textAlign: TextAlign.center,
                              style: ts32Black400),
                          siboh32,
                          const SizedBox(
                            width: 300,
                            height: 450,
                            child: Icon(
                              Icons.network_wifi_1_bar_sharp,
                              color: secondaryColor,
                              size: 250,
                            ),
                          ),
                          siboh32,
                          SizedBox(
                            height: 80,
                            child: Row(
                              children: [
                                Expanded(
                                    child: PrimaryButton(
                                  onTap: () {
                                    context.router.pop();
                                  },
                                  color: secondaryColor.withOpacity(0.2),
                                  title:
                                      AppLocalizations.of(parentContext)!.close,
                                  titleStyle: ts24Black400,
                                )),
                                sibow4,
                                Expanded(
                                    child: PrimaryButton(
                                        onTap: () {
                                          ontap();
                                          if (route == 'caraousel') {
                                            parentContext
                                                .read<SignInBloc>()
                                                .add(
                                                    const SignInEvent.loginForm(
                                                        isSubmitting: true));
                                          }
                                          Navigator.pop(context);
                                        },
                                        color: primaryColor,
                                        titleStyle: ts24White400,
                                        title:
                                            AppLocalizations.of(parentContext)!
                                                .try_again))
                              ],
                            ),
                          )
                        ],
                      ))
                ])));
      });
}

void customSnackBar({
  required BuildContext context,
  required Widget content,
  Color? color,
  Duration? duration,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      content: content,
      shape: RoundedRectangleBorder(borderRadius: borderRadius16),
      duration: duration ?? const Duration(milliseconds: 4000),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
