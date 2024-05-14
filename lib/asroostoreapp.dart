import 'package:flutter/material.dart';
import 'package:nothing/Core/app/env.variables.dart';

class AsrooStoreApp extends StatelessWidget {
  const AsrooStoreApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asroo',
      debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(appBar: AppBar(title: const Text("Asroo Store"),),)
    );
  }
}
