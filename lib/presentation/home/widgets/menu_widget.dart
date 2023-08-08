import 'package:birthday_app/bloc/menu_list/menu_list_cubit.dart';
import 'package:birthday_app/common/navigation/navigation_route_names.dart';
import 'package:birthday_app/common/app_text_styles.dart';
import 'package:birthday_app/domain/entities/food_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Меню',
          style: AppTextStyles.titleStyle,
        ),
        BlocBuilder<MenuListCubit, MenuListState>(
          builder: (context, state) {
            return state.when(
              initial: () => const CircularProgressIndicator(),
              loading: () => const CircularProgressIndicator(),
              loaded: (foods, menuToggle) => Column(
                children: [
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
                      itemCount: menuToggle ? foods.length : 2,
                      itemBuilder: (BuildContext context, int index) {
                        return _MenuItem(food: foods[index]);
                      },
                    ),
                  ),
                  SizedBox(height: 12.h),
                  InkWell(
                    onTap: () {
                      BlocProvider.of<MenuListCubit>(context)
                          .onToggle(menuToggle);
                    },
                    child: Text(
                      menuToggle ? 'Свернуть ▲' : 'Развернуть ▼',
                      style: AppTextStyles.contentStyle.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                ],
              ),
              error: () => const Text(
                  'Что-то пошло не так! Возможно отключен интернет!'),
            );
          },
        ),
      ],
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
      onTap: () => Navigator.of(context)
          .pushNamed(NavigationRouteNames.menuDetail, arguments: food.id),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: borderRadius[food.id % 2],
            child: Image.network(
              food.image,
              width: 140.w,
              height: 140.w,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            food.name,
            style: AppTextStyles.contentStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
