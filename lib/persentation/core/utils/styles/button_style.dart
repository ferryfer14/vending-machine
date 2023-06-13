import 'package:flutter/material.dart';

import 'colors.dart';

final btsPrimary = ElevatedButton.styleFrom(
  backgroundColor: primaryColor,
  padding: const EdgeInsets.symmetric(vertical: 16),
);
final btsPrimaryVer10 = ElevatedButton.styleFrom(
  backgroundColor: primaryColor,
  padding: const EdgeInsets.symmetric(vertical: 10),
);
final btsPrimaryVer8 = ElevatedButton.styleFrom(
  backgroundColor: primaryColor,
  padding: const EdgeInsets.symmetric(vertical: 8),
);
final btsPrimaryVer4 = ElevatedButton.styleFrom(
  backgroundColor: primaryColor,
  padding: const EdgeInsets.symmetric(vertical: 0),
);
final btnRoundedPrimary = ButtonStyle(
  padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
  foregroundColor: MaterialStateProperty.all<Color>(primaryColor),
  backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: const BorderSide(color: primaryColor),
    ),
  ),
);

final btnRoundedRed = ButtonStyle(
  padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
  foregroundColor: MaterialStateProperty.all<Color>(white),
  backgroundColor: MaterialStateProperty.all<Color>(white),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
      side: const BorderSide(color: redColor),
    ),
  ),
);

final btnRoundedNotActive = ButtonStyle(
  padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
  foregroundColor: MaterialStateProperty.all<Color>(greyLiteColor),
  backgroundColor: MaterialStateProperty.all<Color>(greyLiteColor),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: const BorderSide(color: greyLiteColor),
    ),
  ),
);
