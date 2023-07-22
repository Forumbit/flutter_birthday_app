import 'package:birthday_app/features/home/domain/entities/entertainment_entity.dart';
import 'package:birthday_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:birthday_app/features/home/presentation/pages/animation_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EntertainmentsWidget extends StatelessWidget {
  const EntertainmentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        final entertainments = EntertainmentData.entertainmentsData;
        final entertainmentsIsOpen =
            context.select((HomeBloc bloc) => bloc.state.entertainmentsIsOpen);
        return Column(
          children: [
            Text(
              'Развлечения',
              style: TextStyle(
                fontFamily: 'Yeseva One',
                fontSize: 24.sp,
              ),
            ),
            SizedBox(height: 8.h),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: entertainmentsIsOpen ? 2 : 1,
              itemBuilder: (BuildContext context, int index) {
                return _EntertainmentItem(entertainment: entertainments[index]);
              },
            ),
            SizedBox(width: 8.h),
            InkWell(
              onTap: () {
                BlocProvider.of<HomeBloc>(context)
                    .add(HomeEntertainmentsToggleEvent(entertainmentsIsOpen));
              },
              child: Text(
                entertainmentsIsOpen ? 'Свернуть ▲' : 'Развернуть ▼',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 14.sp,
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
            Image.asset(entertainment.icon),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    entertainment.name,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    entertainment.description,
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
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
