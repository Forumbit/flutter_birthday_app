import 'package:birthday_app/common/app_images/app_images.dart';
import 'package:birthday_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final pageItems = <_PageItem>[
      _PageItem(),
      _PageItem(),
      _PageItem(),
      _PageItem(),
      _PageItem(),
    ];

    return SizedBox(
      height: 250.w,
      child: Stack(
        children: [
          Builder(
            builder: (BuildContext context) {
              return PageView(
                onPageChanged: (value) {
                  final bloc = BlocProvider.of<HomeBloc>(context);
                  bloc.add(HomePageChangedEvent(value));
                },
                children: pageItems,
              );
            },
          ),
          Builder(
            builder: (
              BuildContext context,
            ) {
              final page = context.select((HomeBloc bloc) => bloc.state.page);
              return Padding(
                padding: EdgeInsets.only(bottom: 11.h),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      pageItems.length,
                      (index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.5.w),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(39.r),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            color: Colors.white,
                            height: 5.w,
                            width: index == page ? 30.w : 5.w,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _PageItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppImages.background),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 23.h, left: 23.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '25 августа',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '2023',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
