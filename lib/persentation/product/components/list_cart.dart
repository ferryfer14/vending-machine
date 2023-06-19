import 'package:flutter/material.dart';
import 'package:standart_project/persentation/core/functions/currency_format.dart';
import 'package:standart_project/persentation/core/utils/border/border_radius.dart';
import 'package:standart_project/persentation/core/utils/spacing/padding.dart';
import 'package:standart_project/persentation/core/utils/styles/colors.dart';
import 'package:standart_project/persentation/core/utils/styles/text_style.dart';

import '../../../domain/product/slot_model.dart';
import '../../core/functions/button_circle.dart';
import '../../core/utils/spacing/sizebox.dart';

class ListCart extends StatelessWidget {
  const ListCart({
    super.key,
    required this.slotModel,
    required this.onAdd,
    required this.onMin,
    required this.onDelete,
  });
  final SlotModel slotModel;
  final VoidCallback onAdd;
  final VoidCallback onMin;
  final VoidCallback onDelete;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padall16,
      margin: padall16,
      decoration: BoxDecoration(
          border: Border.all(color: neutralColor, width: 4),
          borderRadius: borderRadius16),
      child: Row(children: [
        Image.network(slotModel.product!.image!, width: 100, height: 100),
        sibow16,
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(slotModel.product!.name!, style: ts20Black400),
              siboh16,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ButtonCircle(
                    onTap: slotModel.amount == 0 ? () {} : onMin,
                    icon: const Icon(Icons.remove, color: black, size: 30),
                    backgroundColor: slotModel.amount == 0
                        ? buttonCircle.withOpacity(0.3)
                        : buttonCircle,
                  ),
                  sibow16,
                  Text(slotModel.amount.toString(), style: ts24Black400),
                  sibow16,
                  ButtonCircle(
                    onTap: slotModel.amount == slotModel.stock ? () {} : onAdd,
                    icon: const Icon(Icons.add, color: white, size: 30),
                    backgroundColor: slotModel.amount == slotModel.stock
                        ? primaryColor.withOpacity(0.3)
                        : primaryColor,
                  ),
                  sibow16,
                  IconButton(
                    onPressed: onDelete,
                    icon: const Icon(Icons.delete_outline, color: redColor),
                    iconSize: 50,
                  )
                ],
              ),
            ]),
            Text(
                CurrencyFormat.convertToIdr(
                    (slotModel.price! * slotModel.amount!), 0),
                style: ts24Black700)
          ],
        ))
      ]),
    );
  }
}
