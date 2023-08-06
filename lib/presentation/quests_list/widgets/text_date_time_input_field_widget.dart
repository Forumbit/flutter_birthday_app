import 'package:birthday_app/common/app_colors.dart';
import 'package:birthday_app/common/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class TextDateTimeInputFieldWidget extends StatefulWidget {
  final String? restorationId;
  final TextEditingController? controller;

  const TextDateTimeInputFieldWidget({
    super.key,
    this.restorationId,
    required this.controller,
  });

  @override
  State<TextDateTimeInputFieldWidget> createState() =>
      _TextDateTimeInputFieldWidgetState();
}

class _TextDateTimeInputFieldWidgetState
    extends State<TextDateTimeInputFieldWidget> with RestorationMixin {
  //* ============== Variables ==================
  final RestorableDateTime _selectedDate = RestorableDateTime(DateTime.now());

  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
      RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: (widget.controller?.text != null)
            ? _getDateTime()
            : _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  //* =============== Functions =================
  int _getDateTime() {
    final dateTime = DateFormat('dd.MM.yyyy').parse(widget.controller!.text);
    return dateTime.millisecondsSinceEpoch;
  }

  void _selectDate(DateTime? newSelecteDate) {
    if (newSelecteDate != null) {
      _selectedDate.value = newSelecteDate;
      widget.controller?.text =
          DateFormat('dd.MM.yyyy').format(_selectedDate.value);
      setState(() {});
    }
  }

  @pragma('vm:entry-point')
  static Route<DateTime> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return Theme(
          data: Theme.of(context).copyWith(
            useMaterial3: true,
            colorScheme: const ColorScheme.light(
              primary: AppColors.additionallyColor,
            ),
          ),
          child: DatePickerDialog(
            initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
            firstDate: DateTime(1900),
            lastDate: DateTime(2024),
          ),
        );
      },
    );
  }

  //* ============== Overrides ==================
  @override
  String? get restorationId => widget.restorationId;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () => _restorableDatePickerRouteFuture.present(),
      readOnly: true,
      controller: widget.controller,
      style: AppTextStyles.textInputContentStyle,
      cursorColor: AppColors.secondaryItemColor,
      decoration: InputDecoration(
        focusColor: AppColors.additionallyColor,
        labelText: 'Дата рождения',
        labelStyle: const TextStyle(
          color: AppColors.secondaryItemColor,
        ),
        fillColor: AppColors.inputBackgroundColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(4.r),
        ),
        suffixIcon: const Icon(
          Icons.date_range_sharp,
          color: AppColors.secondaryColor,
        ),
      ),
    );
  }
}
