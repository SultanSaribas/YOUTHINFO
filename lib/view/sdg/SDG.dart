import 'package:cloud_firestore/cloud_firestore.dart';

class Sdg {
  late String title_1;
  late String title_2;
  late String manifest;
  late int hexcode;
  late String content;

  Sdg(String title_1, String title_2, String manifest, int hexcode,
      String content) {
    this.title_1 = title_1;
    this.title_2 = title_2;
    this.manifest = manifest;
    this.hexcode = hexcode;
    this.content = content;
  }

}