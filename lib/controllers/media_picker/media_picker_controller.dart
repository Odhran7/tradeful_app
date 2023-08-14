import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImagePickerController {
  final ImagePicker _picker = ImagePicker();

  Future<File?> getFromGallery() async {
    return _getFromSource(ImageSource.gallery);
  }

  Future<File?> getFromCamera() async {
    return _getFromSource(ImageSource.camera);
  }

  Future<File?> _getFromSource(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(
      source: source,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    return pickedFile != null ? File(pickedFile.path) : null;
  }
}
