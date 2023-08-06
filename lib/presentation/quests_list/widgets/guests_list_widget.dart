import 'package:birthday_app/bloc/guests_list/guest_list_bloc.dart';
import 'package:birthday_app/common/app_text_styles.dart';
import 'package:birthday_app/common/method/widget_methods.dart';
import 'package:birthday_app/common/widgets/custom_show_dialog_button.dart';
import 'package:birthday_app/domain/entities/guest_entity.dart';
import 'package:birthday_app/presentation/quests_list/widgets/bottom_sheet_content_widget.dart';
import 'package:birthday_app/presentation/quests_list/widgets/guest_image_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GuestsListWidget extends StatelessWidget {
  const GuestsListWidget({
    super.key,
    required this.guests,
  });

  final List<GuestEntity> guests;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: guests.length,
      itemBuilder: (BuildContext context, int index) {
        return _GuestsListWidgetItem(
          guest: guests[index],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 16.h);
      },
    );
  }
}

class _GuestsListWidgetItem extends StatelessWidget {
  final GuestEntity guest;

  const _GuestsListWidgetItem({
    required this.guest,
  });

  int _getCorrectYear(DateTime guestDate) {
    final now = DateTime.now();
    int guestAge = now.year - guestDate.year;
    if ((now.month < guestDate.month) ||
        (now.month == guestDate.month && now.day <= guestDate.day)) {
      guestAge--;
    }
    return guestAge;
  }

  @override
  Widget build(BuildContext context) {
    final date = _getCorrectYear(guest.age);
    return InkWell(
      onLongPress: () {
        WidgetMethods.showModalBottomSheetMethod(
          context: context,
          content: BlocProvider.value(
            value: context.read<GuestsListBloc>(),
            child: BottomSheetContentWidget(
              guest: guest,
            ),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: [
            GuestImagePickerWidget(guest: guest),
            SizedBox(width: 12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    style: AppTextStyles.subTitleStyle.copyWith(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(text: '${guest.firstName} '),
                      TextSpan(text: guest.lastName),
                    ],
                  ),
                ),
                Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  '$date ${WidgetMethods.getDeclensionOfWord(date, 'год', 'года', 'лет')}',
                  style: AppTextStyles.subContentStyle,
                ),
                Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  guest.profession,
                  style: AppTextStyles.contentStyle,
                ),
              ],
            ),
            const Spacer(),
            CustomShowDialogButton(
              text:
                  "Вы хотите удалить из списка: ${guest.firstName} ${guest.lastName}?",
              onPressed: () {
                context
                    .read<GuestsListBloc>()
                    .add(GuestsListEvent.onDelete(guest.id!));
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
