import 'package:birthday_app/common/app_colors.dart';
import 'package:birthday_app/common/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotFoundWidget extends StatelessWidget {
  const NotFoundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Icon(Icons.build),
            const Text('Что-то пошло не так'),
            CustomTextButton(
              text: 'Вернуться назад',
              onPressed: () => context.pop(),
              buttonColor: AppColors.mainColor,
            )
          ],
        ),
      ),
    );
  }
}
