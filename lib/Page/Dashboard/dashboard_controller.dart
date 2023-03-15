import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class DashboardController {
RxDouble navWidth=50.0.obs;
RxString hideNav="".obs;
RxString navValue="Vendors".obs;
RxBool showNav=false.obs;
RxBool showLocationForm=false.obs;
RxBool isLoadingNet=false.obs;

void removeLocation(String id,String collectionPath){
  FirebaseFirestore.instance.collection(collectionPath)
      .doc(id)
      .delete()
      .then((value) => null)
      .onError((error, stackTrace) => null);
}
}