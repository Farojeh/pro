import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'My_row.dart';
import 'my_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create:(_) => MProvider() , 
     child: MyApp() ,  
   ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       themeMode: Provider.of<MProvider>(context).tm,
      theme: ThemeData(primaryColor: Colors.deepPurpleAccent ),
      darkTheme: ThemeData(primaryColor: Colors.black),
      home: Home_page(),
    );
  }
}

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Provider'), backgroundColor: Provider.of<MProvider>(context).light,),
      body: Center(
        child:my_row() ,
      ),
    );
  }
}
