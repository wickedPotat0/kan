import 'package:flutter/material.dart';
import 'routes/route_generator.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
