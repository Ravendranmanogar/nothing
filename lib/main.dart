import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nothing/Core/app/env.variables.dart';

import 'asroostoreapp.dart';

Future<void> main() async {
  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown,DeviceOrientation.portraitUp],
  ).then((_) {
    runApp(const AsrooStoreApp()
    );
  });

}


