import 'package:birthday_app/common/app_images.dart';
import 'package:birthday_app/common/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  var page = 0;

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
          PageView(
            onPageChanged: (value) => setState(() => page = value),
            children: pageItems,
          ),
          Padding(
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
              style: AppTextStyles.carouselTitleStyle,
            ),
            Text(
              '2023',
              style: AppTextStyles.carouselTitleStyle,
            ),
          ],
        ),
      ),
    );
  }
}
