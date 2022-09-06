import 'package:api/controller/user_controller.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:api/pages/landing_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => UserController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LandingPage(),
      ),
    ),
  );
}
