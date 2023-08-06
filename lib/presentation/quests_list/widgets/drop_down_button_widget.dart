import 'package:birthday_app/bloc/guests_list/guest_list_bloc.dart';
import 'package:birthday_app/common/app_text_styles.dart';
import 'package:birthday_app/domain/enum/guests_list_filter_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownButtonWidget extends StatelessWidget {
  const DropDownButtonWidget({
    super.key,
    required this.filterBy,
  });

  final GuestsListFilterEnum filterBy;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return DropdownButton(
        icon: const Icon(
          Icons.arrow_drop_down,
          color: Colors.black,
        ),
        underline: Container(
          height: 1.h,
          color: Colors.black,
        ),
        value: filterBy,
        items: [
          DropdownMenuItem(
            value: GuestsListFilterEnum.byID,
            child: Text(
              'По последним загрузкам',
              style: AppTextStyles.contentStyle,
            ),
          ),
          DropdownMenuItem(
            value: GuestsListFilterEnum.byFirstName,
            child: Text(
              'По имени',
              style: AppTextStyles.contentStyle,
            ),
          ),
          DropdownMenuItem(
            value: GuestsListFilterEnum.byAge,
            child: Text(
              'По возрасту',
              style: AppTextStyles.contentStyle,
            ),
          ),
        ],
        onChanged: (GuestsListFilterEnum? value) {
          if (value == null) return; 
          context
              .read<GuestsListBloc>()
              .add(GuestsListEvent.onFilter(value));
        },
      );
    });
  }
}
