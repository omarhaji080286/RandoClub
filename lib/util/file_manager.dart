import 'dart:convert';
import 'dart:io';

class FileManager {

  static String imageToString(File file){
    return base64Encode(file.readAsBytesSync());
  }

}