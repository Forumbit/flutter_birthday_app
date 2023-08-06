import 'package:birthday_app/bloc/menu_detail/menu_detail_cubit.dart';
import 'package:birthday_app/common/app_text_styles.dart';
import 'package:birthday_app/presentation/menu_detail/widgets/image_widget.dart';
import 'package:birthday_app/presentation/menu_detail/widgets/ingredients_widget.dart';
import 'package:birthday_app/common/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuDetailPage extends StatelessWidget {
  const MenuDetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuDetailCubit, MenuDetailState>(
      builder: (context, state) {
        return Scaffold(
          appBar: state.maybeWhen(
            loaded: (food) => CustomAppBar(title: food.name),
            orElse: () => AppBar(),
          ),
          body: state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (food) => Stack(
              fit: StackFit.expand,
              children: [
                ImageWidget(image: food.image),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(height: 166.h),
                      SizedBox(
                        width: 145.w,
                        child: Text(
                          food.name,
                          style: AppTextStyles.titleStyle,
                        ),
                      ),
                      SizedBox(height: 60.h),
                      IngredientsWidget(food: food),
                    ],
                  ),
                ),
              ],
            ),
            error: () => const Center(child: Text('Что-то пошло не так...')),
          ),
        );
      },
    );
  }
}
