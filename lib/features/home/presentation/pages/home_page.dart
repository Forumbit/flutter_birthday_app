import 'package:birthday_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:birthday_app/features/home/presentation/widgets/AppButtons/app_buttons_widget.dart';
import 'package:birthday_app/features/home/presentation/widgets/Carousel/carousel_widget.dart';
import 'package:birthday_app/features/home/presentation/widgets/Entertainments/entertainments_widget.dart';
import 'package:birthday_app/features/home/presentation/widgets/Menu/menu_widget.dart';
import 'package:birthday_app/features/home/presentation/widgets/Place/place_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: SafeArea(
        child: Scaffold(
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
                        style: TextStyle(fontSize: 14.sp),
                      ),
                      SizedBox(height: 16.h),
                      const AppButtonsWidget(),
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
      ),
    );
  }
}
