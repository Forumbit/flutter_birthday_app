import 'package:birthday_app/features/home/domain/entities/food_entity.dart';
import 'package:birthday_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final foods = FoodData.foodData;

    return Builder(
      builder: (BuildContext context) {
        final menuIsOpen =
            context.select((HomeBloc bloc) => bloc.state.menuIsOpen);

        return Column(
          children: [
            Text(
              'Меню',
              style: TextStyle(
                fontFamily: 'Yeseva One',
                fontSize: 24.sp,
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 31.w,
                  crossAxisCount: 2,
                ),
                itemCount: menuIsOpen ? foods.length : 2,
                itemBuilder: (BuildContext context, int index) {
                  return _MenuItem(food: foods[index]);
                },
              ),
            ),
            SizedBox(height: 12.h),
            InkWell(
              onTap: () {
                BlocProvider.of<HomeBloc>(context)
                    .add(HomeMenuToggleEvent(menuIsOpen));
              },
              child: Text(
                menuIsOpen ? 'Свернуть ▲' : 'Развернуть ▼',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 14.sp,
                ),
              ),
            ),
            SizedBox(height: 12.h),
          ],
        );
      },
    );
  }
}

class _MenuItem extends StatelessWidget {
  final FoodEntity food;

  const _MenuItem({
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = <BorderRadius>[
      BorderRadius.only(
        topRight: Radius.circular(25.r),
        bottomLeft: Radius.circular(25.r),
      ),
      BorderRadius.only(
        topLeft: Radius.circular(25.r),
        bottomRight: Radius.circular(25.r),
      ),
    ];

    return GestureDetector(
      onTap: () => print(food.name),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: borderRadius[food.id % 2],
            child: Image.asset(
              food.image,
              width: 140.w,
              height: 140.w,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            food.name,
            style: TextStyle(fontSize: 14.sp),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
