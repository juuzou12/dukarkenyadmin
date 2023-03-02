import 'package:get/get.dart';

import '../../Controller/auth_controller.dart';
import '../Dashboard/dashboard_page.dart';

class LoginController {
  RxDouble wholeFormH=0.0.obs;
  RxDouble formH=0.0.obs;
  RxBool showForm=false.obs;
  RxBool showMsg=false.obs;
  RxBool isHoveredOnTop=false.obs;
  RxBool isLoading = false.obs;
  RxString errorValue="".obs;

  void login(String email,String pswd){
    Get.find<AuthController>().loginUser(email, pswd, (){
      //successFunction
      Get.to(DashboardPage());
      isLoading.toggle();
    }, (e){
      //failedFunction
      print("failed----$e");
      isLoading.toggle();
      errorValue.value="$e";
    }, (){
      //wrongCred
      print("wrongCreds");
      isLoading.toggle();
      errorValue.value="The details provided are incorrect";
    }, (){
      //userNotFound
      print("no user found");
      isLoading.toggle();
      errorValue.value="Seems like this user is not found in the system";
    }, (){
      //failed
      print("kubaya");
      isLoading.toggle();
      errorValue.value="Something came up when trying to log you in. Nikubaya!!";
    });
  }
}