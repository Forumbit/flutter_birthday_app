import 'package:birthday_app/common/app_images.dart';
import 'package:birthday_app/common/app_text_styles.dart';
import 'package:birthday_app/domain/entities/food_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IngredientsWidget extends StatelessWidget {
  const IngredientsWidget({
    super.key,
    required this.food,
  });

  final FoodEntity food;

  @override
  Widget build(BuildContext context) {
    final ingredients = food.ingredients;
    return GridView.builder(
      shrinkWrap: true,
      itemCount: ingredients?.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3.5,
      ),
      itemBuilder: (context, index) {
        if (ingredients == null) return const Text('Список ингредиентов пуст!');
        return _IngredientItemWidget(ingredient: ingredients[index]);
      }
          
    );
  }
}

class _IngredientItemWidget extends StatelessWidget {
  final String ingredient;

  const _IngredientItemWidget({required this.ingredient});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppImages.food,
          width: 24.w,
          height: 24.w,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 17.w),
        Text(
          ingredient,
          style: AppTextStyles.contentStyle,
        ),
      ],
    );
  }
}
