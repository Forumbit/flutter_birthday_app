import 'dart:async';
import 'dart:io';

import 'package:birthday_app/bloc/guests_list/guest_list_bloc.dart';
import 'package:birthday_app/common/app_images.dart';
import 'package:birthday_app/domain/entities/guest_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class GuestImagePickerWidget extends StatelessWidget {
  const GuestImagePickerWidget({
    super.key,
    required this.guest,
  });

  final GuestEntity guest;

  Future<GuestEntity?> _pickImageFromGallery(BuildContext context) async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnedImage?.path != null) {
      return guest.copyWith(image: returnedImage!.path);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final guestWithImage = await _pickImageFromGallery(context);
        if (guestWithImage != null && context.mounted) {
          context
              .read<GuestsListBloc>()
              .add(GuestsListEvent.onUpdate(guestWithImage));
        }
      },
      child: (guest.image == null)
          ? Image.asset(
              AppImages.defaultImage,
              height: 64.r,
              width: 64.r,
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(100.r),
              child: Image.file(
                File(guest.image!),
                width: 64.r,
                height: 64.r,
                fit: BoxFit.cover,
              ),
            ),
    );
  }
}
