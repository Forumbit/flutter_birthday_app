import 'package:birthday_app/common/app_text_styles.dart';
import 'package:birthday_app/domain/entities/entertainment_entity.dart';
import 'package:birthday_app/presentation/home/pages/animation_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EntertainmentsWidget extends StatefulWidget {
  const EntertainmentsWidget({super.key});

  @override
  State<EntertainmentsWidget> createState() => _EntertainmentsWidgetState();
}

class _EntertainmentsWidgetState extends State<EntertainmentsWidget> {
  var entertainmentsToggle = false;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        final entertainments = EntertainmentData.entertainmentsData;
        return Column(
          children: [
            Text(
              'Развлечения',
              style: AppTextStyles.titleStyle,
            ),
            SizedBox(height: 8.h),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: entertainmentsToggle ? 2 : 1,
              itemBuilder: (BuildContext context, int index) {
                return _EntertainmentItem(entertainment: entertainments[index]);
              },
            ),
            SizedBox(width: 8.h),
            InkWell(
              onTap: () => setState(() {
                entertainmentsToggle = !entertainmentsToggle;
              }),
              child: Text(
                entertainmentsToggle ? 'Свернуть ▲' : 'Развернуть ▼',
                style: AppTextStyles.contentStyle.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 12.h),
          ],
        );
      },
    );
  }
}

class _EntertainmentItem extends StatelessWidget {
  final EntertainmentEntity entertainment;

  const _EntertainmentItem({
    required this.entertainment,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const AnimationPage(),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return Align(
              alignment: AlignmentDirectional.topEnd,
              child: SizeTransition(
                axis: Axis.horizontal,
                sizeFactor: animation,
                child: child,
              ),
            );
          },
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          children: [
            Image.asset(
              entertainment.icon,
              width: 42.w,
              height: 42.w,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    entertainment.name,
                    style: AppTextStyles.subTitleStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    entertainment.description,
                    style: AppTextStyles.contentStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            SizedBox(width: 12.w),
            const Icon(Icons.chevron_right)
          ],
        ),
      ),
    );
  }
}
