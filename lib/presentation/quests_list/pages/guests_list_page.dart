import 'package:birthday_app/bloc/guests_list/guest_list_bloc.dart';
import 'package:birthday_app/common/app_images.dart';
import 'package:birthday_app/common/app_text_styles.dart';
import 'package:birthday_app/common/method/widget_methods.dart';
import 'package:birthday_app/presentation/quests_list/widgets/bottom_sheet_content_widget.dart';
import 'package:birthday_app/presentation/quests_list/widgets/drop_down_button_widget.dart';
import 'package:birthday_app/presentation/quests_list/widgets/guests_list_widget.dart';
import 'package:birthday_app/common/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestsListPage extends StatelessWidget {
  const QuestsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Список гостей'),
      body: Stack(
        children: [
          BlocBuilder<GuestsListBloc, GuestsListState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(child: CircularProgressIndicator()),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (guests, filterBy) => Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${guests.length} .${WidgetMethods.getDeclensionOfWord(
                              guests.length,
                              'гость',
                              'гостя',
                              'гостей',
                            )}',
                            style: AppTextStyles.contentStyle,
                          ),
                          DropDownButtonWidget(filterBy: filterBy)
                        ],
                      ),
                    ),
                    SizedBox(height: 16.h),
                    GuestsListWidget(guests: guests),
                  ],
                ),
                error: () => const Center(child: Text('Что-то пошло не так!')),
              );
            },
          ),
          Positioned(
            bottom: 32,
            right: 32,
            child: IconButton(
              padding: EdgeInsets.zero,
              iconSize: 84.r,
              onPressed: () {
                WidgetMethods.showModalBottomSheetMethod(
                  context: context,
                  content: BlocProvider.value(
                    value: context.read<GuestsListBloc>(),
                    child: const BottomSheetContentWidget(),
                  ),
                );
              },
              icon: Image.asset(
                AppImages.add,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
