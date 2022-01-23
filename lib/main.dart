// ignore_for_file: prefer_const_constructors
import 'package:api_provider_user_data/viewpage/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providersection/usercontroller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Userdata()),
        ],
        child: Userpage(),
      ),
    );
  }
}
