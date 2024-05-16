
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';

class ConnectivityController{
  ConnectivityController._();

  ValueNotifier<bool> isConnected=ValueNotifier(true);

 static final ConnectivityController instance=ConnectivityController._();
   Future <void> init () async{
     final result = await Connectivity().checkConnectivity();
     isInternetConnected(result as ConnectivityResult?);
     Connectivity().onConnectivityChanged.listen(isInternetConnected as void Function(List<ConnectivityResult> event)?);
   }
   bool isInternetConnected(ConnectivityResult? result){
     if (result==ConnectivityResult.none){
       return false;
     }
     else if(result ==ConnectivityResult.mobile||
         result == ConnectivityResult.wifi){
       isConnected.value=true;
       return true;
     }
     return false;
   }
}
