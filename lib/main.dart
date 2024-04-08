import 'package:flutter/material.dart';
import 'package:template_flutter_provider/app/app_widget.dart';
import 'package:template_flutter_provider/app/injector.dart';

void main() {
  registerInstances();
  runApp(const AppWidget());
}
