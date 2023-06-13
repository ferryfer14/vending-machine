import 'package:auto_route/auto_route.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:standart_project/persentation/core/utils/export_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../env.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../exceptions/exceptions.dart';
import 'package:intl/date_symbol_data_local.dart';

alertErrorLoadData(
  BuildContext context,
  AppException exception, {
  VoidCallback? onPress,
  bool isShown = true,
}) {
  isShown
      ? showCupertinoDialog(
          context: context,
          builder: (context) {
            return Theme(
              data: ThemeData.light(),
              child: CupertinoAlertDialog(
                title: const Text("Oops.."),
                content: Text(exception.map(
                  serverException: (e) =>
                      e.errorMessage ??
                      "Sedang ada kendala di server coba lagi nanti.",
                  unexpectedException: (e) =>
                      e.errorMessage ??
                      "Error tidak dapat diketahui. Di sarankan untuk me-restart aplikasi.",
                  locationIsNotAllowed: (e) =>
                      e.errorMessage ??
                      "Tidak dapat memuat data karena akses lokasi tidak disetujui.",
                  badNetworkException: (e) =>
                      "Tidak dapat memuat data, pastikan koneksi internet mu stabil lalu coba lagi.",
                  internalServerException: (e) =>
                      "Sedang ada kendala di server coba lagi nanti.",
                  unauthenticatedException: (e) =>
                      "Session kamu habis. Silahkan login kembali.",
                  empty: (e) => e.errorMessage ?? "Tidak ada data.",
                  invalid: (e) => e.errorMessage ?? "Data tidak sesuai",
                  countingException: (e) =>
                      e.errorMessage ?? "Kesalahan saat menghitung data.",
                )),
                actions: <Widget>[
                  CupertinoDialogAction(
                    child: const Text("Oke", style: ts12black),
                    onPressed: () {
                      AutoRouter.of(context).pop();
                    },
                  ),
                ],
              ),
            );
          },
        )
      : null;
}

void dialog(BuildContext context, String title, Widget content) {
  showDialog(
    context: context,
    builder: (_) {
      return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: padall12,
        child: Wrap(
          children: [
            Container(
              width: double.infinity,
              padding: padall16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title, style: ts14Black600),
                      InkWell(
                        onTap: () => context.router.pop(context),
                        child: const Icon(Icons.close),
                      )
                    ],
                  ),
                  content,
                  siboh8
                ],
              ),
            )
          ],
        ),
      );
    },
  );
}

/// DATE FORMAT
final dateFormat = DateFormat('d MMMM y');

/// CURRENCY FORMAT
final numberFormat = NumberFormat.compactSimpleCurrency(
  decimalDigits: 2,
  locale: 'in',
  name: '',
);
final currencyFormat = NumberFormat('#,##0', 'ID');

/// FUNCTION APP

/// Launch Url Function

Future<bool> getLaunchUrl(String data) async {
  Uri url = Uri.parse(data);
  return await launchUrl(url).then((value) => value);
}

String convertDate(String date) {
  var newStr = date.substring(0, 10) + ' ' + date.substring(11, 23);
  DateTime newDate = new DateFormat("yyyy-MM-dd hh:mm:ss").parse(newStr);
  return DateFormat("dd-MM-yyyy").format(DateTime.now());
}

String converDayDateTime(DateTime date) {
  //initializeDateFormatting('id_ID', null);
  return DateFormat('EEEE').format(date);
}

String converDateTime(DateTime date) {
  //initializeDateFormatting('id_ID', null);
  return DateFormat('d MMM').format(date);
}

String converTime(DateTime date) {
  //initializeDateFormatting('id_ID', null);
  return DateFormat('H:mm').format(date);
}

String convertDateTimeFormatZ(String format, String? dateTimeFormatZ) {
  if (dateTimeFormatZ != null) {
    var dateValue =
        new DateFormat("yyyy-MM-ddTHH:mm:ssZ").parseUTC(dateTimeFormatZ);
    String formattedDate = DateFormat(format).format(dateValue);
    return formattedDate;
  }
  return '';
}

Future<void> navigateTo(double lat, double lng, String title) async {
  final availableMaps = await MapLauncher.installedMaps;
  await availableMaps.first.showMarker(
    coords: Coords(lat, lng),
    title: title,
  );
}
