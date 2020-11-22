import 'package:flutter/material.dart';
import 'package:test_jukebox/routes/app_routes.dart';
import 'package:test_jukebox/views/listing/create_form.dart';
import 'package:test_jukebox/views/listing/edit_form.dart';
import 'package:test_jukebox/views/listing/user_list.dart';
import 'package:test_jukebox/views/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste Jukebox',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blue[200],
          scaffoldBackgroundColor: Colors.white),
      routes: {
        AppRoutes.LOGIN: (_) => LoginScreen(),
        AppRoutes.HOME: (_) => UserList(),
        AppRoutes.CREATE_FORM: (_) => CreateForm(),
        AppRoutes.EDIT_FORM: (_) => EditForm(),
      },
    );
  }
}
