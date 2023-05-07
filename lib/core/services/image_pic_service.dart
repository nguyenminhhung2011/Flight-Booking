import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@injectable
class ImagePicService {
  Future pickFile() async {
    try {
      var result = await FilePicker.platform.pickFiles(
        type: FileType.image,
        allowMultiple: false,
      );
      return File(result!.files.single.path!);
    } catch (e) {
      log("Pick image error:${e.toString()}");
    }
  }

  Future<Uint8List?> pickImage(ImageSource source) async {
    final ImagePicker imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(source: source);
    if (file != null) {
      return await file.readAsBytes();
    }
    return null;
  }

  void pickListImage(Function(List<Uint8List>) callback) async {
    final ImagePicker picker = ImagePicker();
    List<XFile>? files = await picker.pickMultiImage();
    List<Uint8List> images = [];
    for (var file in files) {
      Uint8List image = await file.readAsBytes();
      images.add(image);
    }
    callback(images);
  }
}
