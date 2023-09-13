import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/product/product_bloc.dart';
import '../../core/functions/currency_format.dart';
import '../../core/utils/border/border_radius.dart';
import '../../core/utils/spacing/padding.dart';
import '../../core/utils/styles/colors.dart';
import '../../core/utils/styles/text_style.dart';

class PaymentMethod extends StatelessWidget {
  PaymentMethod({
    super.key,
  });

  List<int> nominal = [2000, 5000, 10000, 20000, 50000];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 5,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: List.generate(nominal.length, (index) {
          return InkWell(
              onTap: () {
                context
                    .read<ProductBloc>()
                    .add(ProductEvent.addNominal(nominal[index]));
              },
              child: Container(
                padding: padall8,
                decoration: BoxDecoration(
                    color: neutralColor, borderRadius: borderRadius8),
                alignment: Alignment.center,
                child: Text(
                  CurrencyFormat.convertToIdr(nominal[index], 0),
                  style: ts12Prim600,
                ),
              ));
        }));
  }
}
