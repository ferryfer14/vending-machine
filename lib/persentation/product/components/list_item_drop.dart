import 'package:flutter/material.dart';
import 'package:standart_project/persentation/core/functions/currency_format.dart';
import 'package:standart_project/persentation/core/utils/border/border_radius.dart';
import 'package:standart_project/persentation/core/utils/spacing/padding.dart';
import 'package:standart_project/persentation/core/utils/styles/colors.dart';
import 'package:standart_project/persentation/core/utils/styles/text_style.dart';

import '../../../domain/product/slot_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../core/utils/spacing/sizebox.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class ListItemDrop extends StatelessWidget {
  const ListItemDrop({
    super.key,
    required this.slotModel,
  });
  final SlotModel slotModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padall16,
      margin: padall16,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.network(slotModel.product!.image!, width: 100, height: 100),
        sibow16,
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(slotModel.product!.name!, style: ts24Black700),
            siboh16,
            Text("${slotModel.amount!}x", style: ts24Secondary400),
          ],
        )),
        slotModel.drop == false
            ? SimpleCircularProgressBar(
                backColor: neutralColor,
                mergeMode: true,
                progressColors: [primaryColor, primaryColor.withOpacity(0.4)],
                fullProgressColor: primaryColor,
                onGetText: (value) {
                  return Text('0/${slotModel.amount!}', style: ts16Prim600);
                },
              )
            : SimpleCircularProgressBar(
                backColor: neutralColor,
                mergeMode: true,
                progressColors: [greenColor, greenColor.withOpacity(0.4)],
                fullProgressColor: greenColor,
                onGetText: (value) {
                  return Text('${slotModel.amount!}/${slotModel.amount!}',
                      style: ts16Success600);
                },
              ),
        sibow16,
        slotModel.drop == false
            ? Text(AppLocalizations.of(context)!.processing,
                style: ts24Primary400)
            : Text(AppLocalizations.of(context)!.successed,
                style: ts24Success600)
      ]),
    );
  }
}
