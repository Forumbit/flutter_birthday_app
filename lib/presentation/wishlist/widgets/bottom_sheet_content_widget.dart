import 'package:birthday_app/bloc/wishlist/wishlist_bloc.dart';
import 'package:birthday_app/common/app_colors.dart';
import 'package:birthday_app/config/text_controller_name/wishlist_text_controller_names.dart';
import 'package:birthday_app/data/mapper/text_controller_mapper.dart';
import 'package:birthday_app/domain/entities/wish_entity.dart';
import 'package:birthday_app/common/widgets/custom_text_button.dart';
import 'package:birthday_app/common/widgets/custom_text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishBottomSheetContentWidget extends StatefulWidget {
  const WishBottomSheetContentWidget({
    super.key,
    this.wish,
  });

  final WishEntity? wish;

  @override
  State<WishBottomSheetContentWidget> createState() =>
      _WishBottomSheetContentWidgetState();
}

class _WishBottomSheetContentWidgetState
    extends State<WishBottomSheetContentWidget> {
  late final Map<String, TextEditingController> _controllers;

  @override
  void initState() {
    _controllers = TextControllerMapper.fromWishEntity(widget.wish);
    super.initState();
  }

  @override
  void dispose() {
    for (var element in _controllers.values) {
      element.dispose();
    }
    super.dispose();
  }

  WishEntity? _textControllerToWishChange(WishEntity? wishEntity) {
    final emptyList =
        _controllers.values.where((element) => element.text == '');
    if (emptyList.isNotEmpty) return null;
    return TextControllerMapper.toWishEntity(_controllers, wishEntity);
  }

  void _onPressedWrite(BuildContext context, WishEntity? wishEntity) {
    final wishChange = _textControllerToWishChange(wishEntity);
    if (wishChange == null) {
    } else if (wishEntity?.id != null) {
      context.read<WishlistBloc>().add(WishlistEvent.onUpdate(wishChange));
    } else {
      context.read<WishlistBloc>().add(WishlistEvent.onCreate(wishChange));
      for (var element in _controllers.values) {
        element.text = '';
      }
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 16.w,
          right: 16.w,
        ),
        child: Column(
          children: [
            CustomTextInputField(
              labelText: 'Название подарка',
              controller: _controllers[WishTextControllerNames.name],
            ),
            SizedBox(height: 16.h),
            CustomTextInputField(
              labelText: 'Ссылка',
              controller: _controllers[WishTextControllerNames.url],
            ),
            SizedBox(height: 50.h),
            SizedBox(
              width: 156.w,
              child: CustomTextButton(
                text: widget.wish == null
                    ? 'Добавить подарок'
                    : 'Изменить подарок',
                onPressed: () => _onPressedWrite(context, widget.wish),
                buttonColor: AppColors.additionallyColor,
              ),
            ),
            SizedBox(height: 50.h),
          ],
        ),
      ),
    );
  }
}
