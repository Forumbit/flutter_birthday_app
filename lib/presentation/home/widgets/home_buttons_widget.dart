import 'package:birthday_app/common/app_colors.dart';
import 'package:birthday_app/common/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeButtonsWidget extends StatelessWidget {
  const HomeButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 156.w,
          child: CustomTextButton(
            text: 'Список гостей',
            onPressed: () => context.push('/guests_list'),
            buttonColor: AppColors.mainColor,
          ),
        ),
        SizedBox(
          width: 156.w,
          child: CustomTextButton(
            text: 'Вишлист',
            onPressed: () => context.push('/wishlist'),
            buttonColor: AppColors.mainColor,
          ),
        )
      ],
    );
  }
}
