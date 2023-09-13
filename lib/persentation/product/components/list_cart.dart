import 'package:flutter/material.dart';
import 'package:standart_project/domain/product/product_model.dart';
import 'package:standart_project/persentation/core/functions/currency_format.dart';
import 'package:standart_project/persentation/core/utils/border/border_radius.dart';
import 'package:standart_project/persentation/core/utils/spacing/padding.dart';
import 'package:standart_project/persentation/core/utils/styles/colors.dart';
import 'package:standart_project/persentation/core/utils/styles/text_style.dart';

import '../../core/functions/button_circle.dart';
import '../../core/utils/spacing/sizebox.dart';

class ListCart extends StatelessWidget {
  const ListCart({
    super.key,
    required this.loading,
    required this.productModel,
    required this.onAdd,
    required this.onMin,
    required this.onDelete,
  });
  final bool loading;
  final ProductModel productModel;
  final VoidCallback onAdd;
  final VoidCallback onMin;
  final VoidCallback onDelete;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padall4,
      margin: padall4,
      decoration: BoxDecoration(
          border: Border.all(color: neutralColor, width: 1),
          borderRadius: borderRadius16),
      child: Row(children: [
        Image.network(productModel.image!, width: 60, height: 60),
        sibow16,
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(productModel.name!, style: ts14Black500),
              siboh8,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ButtonCircle(
                    onTap: productModel.amount == 0
                        ? () {}
                        : (loading ? () {} : onMin),
                    icon: const Icon(Icons.remove, color: black, size: 15),
                    backgroundColor: productModel.amount == 0
                        ? buttonCircle.withOpacity(0.3)
                        : buttonCircle,
                  ),
                  sibow4,
                  Text(productModel.amount.toString(), style: ts14Black600),
                  sibow4,
                  ButtonCircle(
                    onTap: productModel.amount == productModel.stock
                        ? () {}
                        : (loading ? () {} : onAdd),
                    icon: const Icon(Icons.add, color: white, size: 15),
                    backgroundColor: productModel.amount == productModel.stock
                        ? primaryColor.withOpacity(0.3)
                        : primaryColor,
                  )
                ],
              ),
            ]),
            Text(
                CurrencyFormat.convertToIdr(
                    (productModel.price! * productModel.amount!), 0),
                style: ts14Black600),
            sibow4,
            IconButton(
              onPressed: (loading ? () {} : onDelete),
              icon: const Icon(Icons.delete_outline, color: redColor),
              iconSize: 30,
            )
          ],
        ))
      ]),
    );
  }
}
