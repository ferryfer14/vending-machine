import 'package:flutter/material.dart';
import 'package:standart_project/domain/drop/drop_model.dart';
import 'package:standart_project/persentation/core/utils/spacing/padding.dart';
import 'package:standart_project/persentation/core/utils/styles/colors.dart';
import 'package:standart_project/persentation/core/utils/styles/text_style.dart';
import 'package:standart_project/persentation/product/components/circular_text.dart';

import '../../../domain/product/slot_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../core/utils/spacing/sizebox.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class ListItemDrop extends StatelessWidget {
  const ListItemDrop({
    super.key,
    required this.dropModel,
  });
  final DropModel dropModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padall16,
      margin: padall16,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.network(dropModel.product!.image!, width: 100, height: 100),
        sibow16,
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(dropModel.product!.name!, style: ts24Black700),
            siboh16,
            Text("${dropModel.amount!}x", style: ts24Secondary400),
          ],
        )),
        dropModel.statusDrop == 0
            ? CircularText(
                backColor: neutralColor,
                progressColor: pendingColor,
                widgetText: Text('${dropModel.dropped}/${dropModel.amount!}',
                    style: ts16Pending600),
              )
            : (dropModel.statusDrop == 1
                ? CircularText(
                    backColor: neutralColor,
                    progressColor: primaryColor,
                    widgetText: Text(
                        '${dropModel.dropped}/${dropModel.amount!}',
                        style: ts16Prim600),
                  )
                : (dropModel.statusDrop == 2
                    ? CircularText(
                        backColor: neutralColor,
                        progressColor: greenColor,
                        widgetText: Text(
                            '${dropModel.dropped}/${dropModel.amount!}',
                            style: ts16Success600),
                      )
                    : CircularText(
                        backColor: neutralColor,
                        progressColor: redColor,
                        widgetText: Text(
                            '${dropModel.dropped}/${dropModel.amount!}',
                            style: ts16Red600),
                      ))),
        sibow16,
        dropModel.statusDrop == 0
            ? Text(AppLocalizations.of(context)!.waitings,
                style: ts24Pending400)
            : (dropModel.statusDrop == 1
                ? Text(AppLocalizations.of(context)!.processing,
                    style: ts24Primary400)
                : (dropModel.statusDrop == 2
                    ? Text(AppLocalizations.of(context)!.successed,
                        style: ts24Success600)
                    : Text(AppLocalizations.of(context)!.fail,
                        style: ts24Red600)))
      ]),
    );
  }
}
