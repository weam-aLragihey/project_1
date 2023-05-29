import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


import 'Homepage.dart';
import 'addnotes.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(


          primarySwatch: Colors.orange
        ),
        home:const Login(),
      routes:{
        "  login":(context)=> Login(),
        "homepage":(context) => Homepage(),
        "addnotes":(context)  => AddNotes(),
      },

    );
  }
}


