import 'package:flutter/material.dart';
import './screens/main_screen.dart';
import 'package:provider/provider.dart';
import './model/model.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider(
      create: (context) => ModelClass(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color.fromRGBO(52, 171, 245, 1),
          colorScheme: ColorScheme.light(
            secondary: Colors.lightBlueAccent
          )
        ),
        routes: {
          '/' : (context) => MainScreen()
        },
      ),
    );
  }
}