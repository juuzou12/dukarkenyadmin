import 'package:firebase_analytics/firebase_analytics.dart';

class UserController{
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  void action()async{
    final analytic=await analytics.logLogin()
        .then((value) => null)
        .onError((error, stackTrace) => null);
    print(analytic);
  }
}