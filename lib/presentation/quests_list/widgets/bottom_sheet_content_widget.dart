import 'package:birthday_app/bloc/guests_list/guest_list_bloc.dart';
import 'package:birthday_app/common/app_colors.dart';
import 'package:birthday_app/common/app_text_styles.dart';
import 'package:birthday_app/config/text_controller_name/guest_text_controller_names.dart';
import 'package:birthday_app/data/mapper/text_controller_mapper.dart';
import 'package:birthday_app/domain/entities/guest_entity.dart';
import 'package:birthday_app/presentation/quests_list/widgets/text_date_time_input_field_widget.dart';
import 'package:birthday_app/common/widgets/custom_text_button.dart';
import 'package:birthday_app/common/widgets/custom_text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSheetContentWidget extends StatefulWidget {
  const BottomSheetContentWidget({
    super.key,
    this.guest,
  });

  final GuestEntity? guest;

  @override
  State<BottomSheetContentWidget> createState() =>
      _BottomSheetContentWidgetState();
}

class _BottomSheetContentWidgetState extends State<BottomSheetContentWidget> {
  late final Map<String, TextEditingController> _controllers;
  bool isError = false;

  @override
  void initState() {
    _controllers = TextControllerMapper.fromGuestEntity(widget.guest);
    super.initState();
  }

  @override
  void dispose() {
    for (var element in _controllers.values) {
      element.dispose();
    }
    super.dispose();
  }

  void _onPressedWrite(BuildContext context) {
    final guestChange = _textControllerToGuestChange(widget.guest);
    if (guestChange != null) {
      changeGuest(guestChange);
    } else {
      isError = true;
      setState(() {});
    }
  }

  GuestEntity? _textControllerToGuestChange(GuestEntity? guest) {
    final emptyList =
        _controllers.values.where((element) => element.text == '');
    if (emptyList.isNotEmpty) return null;
    return TextControllerMapper.toGuestEntity(_controllers, guest);
  }

  void changeGuest(GuestEntity guest) {
    if (guest.id != null) {
      context.read<GuestsListBloc>().add(GuestsListEvent.onUpdate(guest));
    } else {
      context.read<GuestsListBloc>().add(GuestsListEvent.onCreate(guest));
      for (var element in _controllers.values) {
        element.text = '';
      }
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 16.w,
          right: 16.w,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              if (isError)
                Text(
                  'Заполните все поля!',
                  style: AppTextStyles.subTitleStyle.copyWith(
                    color: Colors.redAccent,
                  ),
                ),
              SizedBox(height: 5.h),
              CustomTextInputField(
                labelText: 'Имя',
                controller: _controllers[GuestTextControllerNames.firstName],
              ),
              SizedBox(height: 16.h),
              CustomTextInputField(
                labelText: 'Фамилия',
                controller: _controllers[GuestTextControllerNames.lastName],
              ),
              SizedBox(height: 16.h),
              TextDateTimeInputFieldWidget(
                restorationId: 'main',
                controller: _controllers[GuestTextControllerNames.age],
              ),
              SizedBox(height: 16.h),
              CustomTextInputField(
                labelText: 'Телефон',
                controller: _controllers[GuestTextControllerNames.phone],
              ),
              SizedBox(height: 16.h),
              CustomTextInputField(
                labelText: 'Профессия',
                controller: _controllers[GuestTextControllerNames.profession],
              ),
              SizedBox(height: 50.h),
              SizedBox(
                width: 156.w,
                child: CustomTextButton(
                  text: 'Записать',
                  onPressed: () => _onPressedWrite(context),
                  buttonColor: AppColors.additionallyColor,
                ),
              ),
              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }
}
