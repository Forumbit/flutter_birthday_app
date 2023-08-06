import 'package:birthday_app/bloc/wishlist/wishlist_bloc.dart';
import 'package:birthday_app/common/app_colors.dart';
import 'package:birthday_app/common/app_images.dart';
import 'package:birthday_app/common/method/widget_methods.dart';
import 'package:birthday_app/common/widgets/custom_app_bar.dart';
import 'package:birthday_app/domain/entities/wish_entity.dart';
import 'package:birthday_app/presentation/wishlist/widgets/bottom_sheet_content_widget.dart';
import 'package:birthday_app/presentation/wishlist/widgets/wishlist_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Вишлист'),
      body: Stack(
        children: [
          BlocBuilder<WishlistBloc, WishlistState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.additionallyColor,
                  ),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.additionallyColor,
                  ),
                ),
                loaded: (List<WishEntity> wishlist) =>
                    WishlistWidget(wishlist: wishlist),
                error: (String? error) =>
                    Text('Произошла какая-то ошибка! $error'),
              );
            },
          ),
          _FloatingActionButtonWidget(),
        ],
      ),
    );
  }
}

class _FloatingActionButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 32,
      right: 32,
      child: IconButton(
        padding: EdgeInsets.zero,
        iconSize: 84.r,
        onPressed: () {
          WidgetMethods.showModalBottomSheetMethod(
            context: context,
            content: BlocProvider.value(
              value: context.read<WishlistBloc>(),
              child: const WishBottomSheetContentWidget(),
            ),
          );
        },
        icon: Image.asset(
          AppImages.add,
        ),
      ),
    );
  }
}
