import 'dart:io';

import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:flutter/foundation.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

Future pickFile() async {
  try {
    var result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: false,
    );
    return File(result!.files.single.path!);
  } catch (e) {
    debugPrint("Pick image error:${e.toString()}");
  }
}

Future pickImage(ImageSource source) async {
  final ImagePicker imagePicker = ImagePicker();
  XFile? file = await imagePicker.pickImage(source: source);
  if (file != null) {
    return await file.readAsBytes();
  }
}

@injectable
class CloundinaryService {
  Future<String?> convertUti8ListToUrl(Uint8List? image, String name) async {
    if (image == null) return null;
    String imageUrl = "";
    final cloudinary = CloudinaryPublic('ddopvilpr', 'evzte9pr');
    CloudinaryResponse imageRes = await cloudinary.uploadFile(
      CloudinaryFile.fromBytesData(image, identifier: name),
    );
    imageUrl = imageRes.secureUrl;
    return imageUrl;
  }

  static Future<String?> convertAssetsToUrl(
      Uint8List? source, String identifier) async {
    if (source == null) {
      return null;
    }
    String? result;

    final cloudinary = CloudinaryPublic('ddopvilpr', 'evzte9pr');
    CloudinaryResponse imageConverter = await cloudinary.uploadFile(
      CloudinaryFile.fromBytesData(source, identifier: identifier),
    );
    result = imageConverter.secureUrl;

    return result;
  }

  static List<Map<String, dynamic>> convertList2ListMap(
      List<dynamic> source,
      Map<String, dynamic> Function(Map<String, dynamic>)
          handleExtractEachElement) {
    List<Map<String, dynamic>> result = [];

    for (var element in source) {
      Map<String, dynamic> temp = element;
      result.add(handleExtractEachElement(temp));
    }

    return result;
  }
}
