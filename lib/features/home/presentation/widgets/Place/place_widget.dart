import 'package:birthday_app/common/app_images/app_images.dart';
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
        Text(
          'Место',
          style: TextStyle(
            fontSize: 24.sp,
            fontFamily: 'Yeseva One',
          ),
        ),
        SizedBox(height: 16.h),
        Placeholder(
          fallbackHeight: 246.w,
          child: YandexMap(
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
                    color: Colors.lightGreen,
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
          style: TextStyle(fontSize: 14.sp),
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
            style: TextStyle(
              fontSize: 14.sp,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        SizedBox(height: 80.h),
      ],
    );
  }
}
