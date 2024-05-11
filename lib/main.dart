import 'package:flutter/material.dart';
import 'package:nothing/Core/app/env.variables.dart';

import 'asroostoreapp.dart';

Future<void> main() async {
  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);
  runApp(const AsrooStoreApp());
}


