import 'package:birthday_app/common/app_colors.dart';
import 'package:birthday_app/common/app_images.dart';
import 'package:birthday_app/common/app_text_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class PlaceWidget extends StatelessWidget {
  const PlaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Место', style: AppTextStyles.titleStyle),
        SizedBox(height: 16.h),
        Placeholder(
          fallbackHeight: 246.w,
          child: YandexMap(
            gestureRecognizers: {
              Factory<OneSequenceGestureRecognizer>(
                () => EagerGestureRecognizer(),
              )
            },
            mapObjects: [
              PlacemarkMapObject(
                mapId: const MapObjectId("Просто Лес"),
                point: const Point(
                  latitude: 47.2427,
                  longitude: 38.691239,
                ),
                text: const PlacemarkText(
                  text: 'Просто Лес',
                  style: PlacemarkTextStyle(
                    color: AppColors.additionallyColor,
                    placement: TextStylePlacement.top,
                    size: 12,
                  ),
                ),
                icon: PlacemarkIcon.single(
                  PlacemarkIconStyle(
                      image: BitmapDescriptor.fromAssetImage(AppImages.forest),
                      scale: MediaQuery.of(context).size.shortestSide * 0.0005),
                ),
              )
            ],
            onMapCreated: (controller) async {
              await controller.moveCamera(
                animation: const MapAnimation(
                  type: MapAnimationType.linear,
                  duration: 0,
                ),
                CameraUpdate.newCameraPosition(
                  const CameraPosition(
                    target: Point(
                      latitude: 47.242613,
                      longitude: 38.691239,
                    ),
                    zoom: 18,
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          'Центральная ул., 84, хутор Седых',
          style: AppTextStyles.contentStyle,
        ),
        SizedBox(height: 10.h),
        InkWell(
          onTap: () {
            final url =
                Uri.parse('https://yandex.ru/maps/org/prosto_les/43210131608/');
            launchUrl(url);
          },
          child: Text(
            'Перейти на сайт места',
            style: AppTextStyles.contentStyle.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        SizedBox(height: 80.h),
      ],
    );
  }
}
