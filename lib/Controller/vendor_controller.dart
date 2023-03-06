import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class VendorController {
  //generating activation code
  //randomize values of 6 digits
  //this randomized value will also be the account opening password

  //firebase variables......
  var firebaseAuth = FirebaseAuth.instance;
  final fireStoreInstance = FirebaseFirestore.instance;

  RxBool isGood=false.obs;
  //generating code.....
  static var chars = '1234567890';
  static var char = '0192837465';
  static Random rnd = Random();

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => chars.codeUnitAt(rnd.nextInt(chars.length))));

  //sending data to the server with no auth will be if the following conditions
  //are met....
  //--user is dukar.kenya@gmail.com---
  Future <void> addVendor(String collectionPath,Map<String,dynamic> payload,successful,failed,String email)async{
    fireStoreInstance.collection(collectionPath)
        .doc(email)
        .set(payload)
        .then((value) => successful())
        .onError((error, stackTrace) => {failed(),print(error)});
  }

  Future<Map<String, dynamic>> payload(String activationCode,String storeName,String storePhoneNo
      ,bool storeDelivery,String storeDeliveryFeePerKm,double businessRating,String storePaymentMethod,String storePaymentNo,String storeBusinessType,String storeBio,String storeEmail,
      String genderTarget,Map<String,dynamic> ownerInfo,Map<String,dynamic> profileInfo,double lat,double long)async{

    Map<String, dynamic> payload={
      "storeName":storeName,
      "storeLat": lat,
      "storeLong": long,
      "storePhoneNo": storePhoneNo,
      "storeDelivery": storeDelivery,
      "storeDeliveryFeePerKm":storeDeliveryFeePerKm,
      "businessRating":businessRating,
      "storePaymentMethod": storePaymentMethod,
      "storePaymentNo":storePaymentNo,
      "storeBusinessType": storeBusinessType,
      "storeBio":storeBio,
      "ageTarget": '',
      "genderTarget": genderTarget,
      "bannerImgUrl":'',
      "storePhotos":'',
      "storeEmail":storeEmail,
      "profileInfo":profileInfo,
      'uuid': '',
      "changePassword":true,
      'ownerInfo':ownerInfo,
      'activationStatus':"notActivated",
      'activationCode':activationCode,
      "adSlots": "",
      "mediaSlots": "",
      "deviceToken":"",
      "modeledSlots": "",
      "multiDevices": "",
      "packagePlan": "",
      "promoSlots": "",
      "status": "",
      "storageLimit": "",
      'timeStamp':DateTime.now().millisecondsSinceEpoch,
      "subscriptionTimeStamp":0
    };
    return payload;
  }
  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.
  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }
}
