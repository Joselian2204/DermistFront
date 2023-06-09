import 'package:dermist/src/constants/colors.dart';
import 'package:flutter/material.dart';

final ButtonStyle buttonLogIn = ElevatedButton.styleFrom(
  minimumSize: const Size(269, 44),
  primary: primaryColor,
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10)
    )
  )
);

final ButtonStyle buttonCamera = ElevatedButton.styleFrom(
    minimumSize: const Size(300, 44),
    primary: primaryColor,
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(10)
        )
    )
);

final ButtonStyle buttonDialog = ElevatedButton.styleFrom(
    minimumSize: const Size(100, 40),
    primary: primaryColor,
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(10)
        )
    )
);