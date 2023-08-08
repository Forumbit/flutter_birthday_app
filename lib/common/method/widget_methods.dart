import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class WidgetMethods {
  static String getDeclensionOfWord(
    int number,
    String one,
    String two,
    String five,
  ) {
    if (5 <= number && number <= 20) {
      return five;
    }
    number = number % 10;
    if (number == 1) {
      return one;
    }
    if (number == 2 || number == 3 || number == 4) {
      return two;
    }
    return five;
  }

  static void showModalBottomSheetMethod({
    required BuildContext context,
    required Widget content,
  }) {
    showModalBottomSheet(
      showDragHandle: true,
      isScrollControlled: true,
      context: context,
      barrierColor: Colors.black38,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.r),
          topRight: Radius.circular(12.r),
        ),
      ),
      builder: (_) => content,
    );
  }
}
