import 'package:get/get.dart';

import '../../Controller/auth_controller.dart';

class LoginController {
  RxDouble wholeFormH=0.0.obs;
  RxDouble formH=0.0.obs;
  RxBool showForm=false.obs;
  RxBool showMsg=false.obs;
  RxBool isHoveredOnTop=false.obs;

  void login(String email,String pswd){
    Get.find<AuthController>().loginUser(email, pswd, (){
      //successFunction
      print("passed");
    }, (){
      //failedFunction
      print("failed");
    }, (){
      //wrongCred
      print("wrongCreds");
    }, (){
      //userNotFound
      print("no user found");
    }, (){
      //failed
      print("kubaya");
    });
  }
}