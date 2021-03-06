import 'package:flutter/material.dart';
import 'package:telah/utils/sizemodel.dart';

class UserWidgets {
  button(
      {required BuildContext context,
      required Function function,
      double? buttonHeight,
      double? buttonTextSize,
      Color? buttonColor,
      String? buttonText}) {
    Sizes().heightSizeCalc(context);
    Sizes().widthSizeCalc(context);
    return SizedBox(
      height: buttonHeight ?? Sizes.h40,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: buttonColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(Sizes.w15)))),
          onPressed: () {
            function();
          },
          child: Text(buttonText ?? 'Proceed',
              style: TextStyle(fontSize: buttonTextSize ?? Sizes.w16))),
    );
  }
}

class Decorations {}

customDivider({double? height, Color? color}) {
  return Divider(
    height: height ?? 2,
    color: color ?? Colors.transparent,
  );
}

customVerticalDivider({double? width, Color? color}) {
  return VerticalDivider(
    width: width ?? 2,
    color: color ?? Colors.transparent,
  );
}
