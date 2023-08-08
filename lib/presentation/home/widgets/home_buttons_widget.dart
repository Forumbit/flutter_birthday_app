import 'package:birthday_app/common/app_colors.dart';
import 'package:birthday_app/common/navigation/navigation_route_names.dart';
import 'package:birthday_app/common/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            onPressed: () =>
                Navigator.of(context).pushNamed(NavigationRouteNames.guestsList),
            buttonColor: AppColors.mainColor,
          ),
        ),
        SizedBox(
          width: 156.w,
          child: CustomTextButton(
            text: 'Вишлист',
            onPressed: () =>
                Navigator.of(context).pushNamed(NavigationRouteNames.wishlist),
            buttonColor: AppColors.mainColor,
          ),
        )
      ],
    );
  }
}
