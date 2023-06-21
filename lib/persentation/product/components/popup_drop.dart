import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:standart_project/persentation/product/components/list_item_drop.dart';
import '../../../domain/product/slot_model.dart';
import '../../core/utils/spacing/sizebox.dart';
import '../../core/utils/styles/colors.dart';
import '../../core/utils/styles/text_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PopupDrop extends StatelessWidget {
  const PopupDrop({super.key, required this.listSlotModel});
  final List<SlotModel> listSlotModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: white,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          siboh32,
          Row(
            children: [
              sibow24,
              Expanded(
                child: Text(AppLocalizations.of(context)!.waiting_coming,
                    textAlign: TextAlign.left, style: ts32Black600),
              ),
              // SizedBox(
              //     height: 50,
              //     width: 50,
              //     child: InkWell(
              //       onTap: () {
              //         context.router.pop();
              //       },
              //       child: const Icon(Icons.clear,
              //           size: 36, color: secondaryColor),
              //     )),
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
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(Icons.check_circle, color: greenColor, size: 24),
            sibow8,
            Text(AppLocalizations.of(context)!.payment_success,
                textAlign: TextAlign.left, style: ts24Black700)
          ]),
          siboh24,
          Center(
            child: SizedBox(
                width: 500,
                child: Text(AppLocalizations.of(context)!.payment_des,
                    textAlign: TextAlign.center, style: ts24Secondary400)),
          ),
          siboh24,
          const Divider(
            height: 10,
            thickness: 3,
            color: backgroundImage,
          ),
          siboh24,
          ...List.generate(listSlotModel.length,
              (index) => ListItemDrop(slotModel: listSlotModel[index])),
          siboh24
        ]));
  }
}
