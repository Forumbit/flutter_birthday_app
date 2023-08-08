import 'package:birthday_app/common/app_text_styles.dart';
import 'package:birthday_app/presentation/home/widgets/home_buttons_widget.dart';
import 'package:birthday_app/presentation/home/widgets/carousel_widget.dart';
import 'package:birthday_app/presentation/home/widgets/entertainments_widget.dart';
import 'package:birthday_app/presentation/home/widgets/menu_widget.dart';
import 'package:birthday_app/presentation/home/widgets/place_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const CarouselWidget(),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    Text(
                      'Приглашаю своих дорогих друзей отметить мой день рождения в замечательном месте с множеством развлечений, вкусных блюд и хорошим настроением!',
                      style: AppTextStyles.contentStyle,
                    ),
                    SizedBox(height: 16.h),
                    const HomeButtonsWidget(),
                    SizedBox(height: 30.h),
                    const MenuWidget(),
                    SizedBox(height: 30.h),
                    const EntertainmentsWidget(),
                    SizedBox(height: 30.h),
                    const PlaceWidget(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
