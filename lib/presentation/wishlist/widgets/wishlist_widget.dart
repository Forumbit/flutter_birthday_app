import 'package:birthday_app/bloc/wishlist/wishlist_bloc.dart';
import 'package:birthday_app/common/app_colors.dart';
import 'package:birthday_app/common/app_text_styles.dart';
import 'package:birthday_app/common/method/widget_methods.dart';
import 'package:birthday_app/common/widgets/custom_show_dialog_button.dart';
import 'package:birthday_app/domain/entities/wish_entity.dart';
import 'package:birthday_app/presentation/wishlist/widgets/bottom_sheet_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishlistWidget extends StatelessWidget {
  const WishlistWidget({
    super.key,
    required this.wishlist,
  });

  final List<WishEntity> wishlist;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: ListView.separated(
        itemCount: wishlist.length,
        itemBuilder: (BuildContext context, int index) {
          final wish = wishlist[index];
          return _WishListItemWidget(wish: wish);
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 16.w);
        },
      ),
    );
  }
}

class _WishListItemWidget extends StatelessWidget {
  const _WishListItemWidget({
    required this.wish,
  });

  final WishEntity wish;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        WidgetMethods.showModalBottomSheetMethod(
          context: context,
          content: BlocProvider.value(
            value: context.read<WishlistBloc>(),
            child: WishBottomSheetContentWidget(
              wish: wish,
            ),
          ),
        );
      },
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                wish.name,
                style: AppTextStyles.subTitleStyle,
              ),
              InkWell(
                onTap: () {
                  // final url = Uri.tryParse(wish.url);
                  // if (url != null) {
                  //   launchUrl(url);
                  // }
                },
                child: Text(
                  wish.url,
                  style: AppTextStyles.contentStyle.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              context.read<WishlistBloc>().add(
                    WishlistEvent.onUpdate(
                      wish.copyWith(isBooked: !wish.isBooked),
                    ),
                  );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.r),
              child: Container(
                color: wish.isBooked
                    ? AppColors.secondaryItemColor
                    : AppColors.secondaryColor,
                width: 20.w,
                height: 20.w,
              ),
            ),
          ),
          SizedBox(width: 30.w),
          CustomShowDialogButton(
            text: "Вы хотите удалить из списка: ${wish.name}?",
            onPressed: () {
              context.read<WishlistBloc>().add(WishlistEvent.onDelete(wish));
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
