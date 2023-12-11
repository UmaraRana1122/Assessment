import 'package:flutter/material.dart';

Widget onPress({Function? onTap, Widget? child}) {
  return InkWell(
    splashColor: Colors.transparent,
    focusColor: Colors.transparent,
    highlightColor: Colors.transparent,
    onTap: () {
      if (onTap != null) {
        onTap();
      }
    },
    child: child,
  );
}
