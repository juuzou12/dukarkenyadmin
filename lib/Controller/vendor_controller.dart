import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class VendorController {
  //generating activation code
  //randomize values of 6 digits
  //this randomized value will also be the account opening password

  //firebase variables......
  var firebaseAuth = FirebaseAuth.instance;
  final fireStoreInstance = FirebaseFirestore.instance;

  //generating code.....
  static var chars = '1234567890';
  static var char = '0192837465';
  static Random rnd = Random();

  static String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => chars.codeUnitAt(rnd.nextInt(chars.length))));
}
