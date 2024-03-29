import 'package:flutter/material.dart';
import 'package:med_sal_app/core/services/services.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const App());
}
