import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:nothing/Core/app/connectivity.dart';
import 'package:nothing/Core/app/env.variables.dart';
import 'package:nothing/Core/common/screens/no_network_screen.dart';
//import 'package:assets/images/core';

class AsrooStoreApp extends StatelessWidget {
  const AsrooStoreApp({super.key});


  @override
  Widget build(BuildContext context) {
    
    return ValueListenableBuilder(
        valueListenable: ConnectivityController.instance.isConnected,
        builder: (_,value,__)
    {
      if (value) {
        return MaterialApp(
            title: 'Asroo',
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            theme: ThemeData(

              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            builder: (context,widget){
              return Scaffold(
                body: Builder(
                  builder: (context){
                    ConnectivityController.instance.init();
                    return widget!;
                  },
                ),
              );
            },
            home: Scaffold(appBar: AppBar(title: const Text("Asroo Store"),),)
        );
      } else {
        return MaterialApp(
          title: 'No Network',
          debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
          home: NoNetworkScreen(),
        );
      }
    }
    );
  }
}
