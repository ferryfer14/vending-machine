import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../core/utils/styles/colors.dart';

class ShimmerProduct extends StatelessWidget {
  ShimmerProduct({Key? key}) : super(key: key);
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Shimmer.fromColors(
            baseColor: white,
            highlightColor: whiteLiteColor,
            child: Container(
              height: 208,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Shimmer.fromColors(
            baseColor: white,
            highlightColor: whiteLiteColor,
            child: Container(
              height: 14,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Shimmer.fromColors(
                    baseColor: white,
                    highlightColor: whiteLiteColor,
                    child: Container(
                      height: 14,
                      margin: const EdgeInsets.only(left: 4),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  )),
                  const SizedBox(width: 4),
                  Expanded(
                      child: Shimmer.fromColors(
                    baseColor: white,
                    highlightColor: whiteLiteColor,
                    child: Container(
                      height: 14,
                      margin: const EdgeInsets.only(left: 4),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ))
                ],
              )),
        ],
      ),
    );
  }
}
