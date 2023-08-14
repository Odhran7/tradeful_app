import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tradeful_app/utils/colors.dart';
import '../../controllers/media_picker/media_picker_controller.dart';
import '../small_text.dart';

class AttachImageWidget extends StatefulWidget {
  @override
  _AttachImageWidgetState createState() => _AttachImageWidgetState();
}

class _AttachImageWidgetState extends State<AttachImageWidget> {
  final ImagePickerController _controller = ImagePickerController();
  File? _selectedImage;

  // Logic to attach an image from the gallery

  Future<void> _onAttachImageFromGallery() async {
    final imageFile = await _controller.getFromGallery();
    if (imageFile != null) {
      setState(() {
        _selectedImage = imageFile;
      });
    }
  }

  // Logic to attach an image from the camera (loses connection in dev environment)

  Future<void> _onAttachImageFromCamera() async {
    final imageFile = await _controller.getFromCamera();
    if (imageFile != null) {
      setState(() {
        _selectedImage = imageFile;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 250,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.buttonColor,
            ),
            onPressed: _onAttachImageFromGallery,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallText(
                  text: 'Attach Image from Gallery',
                  color: AppColors.textColor,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.photo_library,
                  color: AppColors.textColor,
                ),
              ],
            ),
          ),
        ),

        Container(
          width: 250,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.buttonColor,
            ),
            onPressed: _onAttachImageFromCamera,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallText(
                  text: 'Attach Image from Camera',
                  color: AppColors.textColor,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.camera, color: AppColors.textColor),
              ],
            ),
          ),
        ),
        if (_selectedImage != null)
          Image.file(
            _selectedImage!,
            width: 200,
          ),
      ],
    );
  }
}
