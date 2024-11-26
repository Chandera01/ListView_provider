import 'package:flutter/material.dart';
import 'package:list_view_provider/list_page.dart';
import 'package:list_view_provider/list_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context)=> ListProvider(),child: MyApp(),));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListviewProvider',
      home:  ListHomePage(),
    );
  }
}


