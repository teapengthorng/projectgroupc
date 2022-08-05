import 'dart:io';
import 'package:flutter/material.dart';
import 'widget/persistent_bottom_nav_bar_wiget.dart';

void main() {
  HttpOverrides.global = AcceptSslCertificated();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  PersistentBottomNavBarWidget(),
    );
  }
}
class AcceptSslCertificated extends HttpOverrides {

  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}


