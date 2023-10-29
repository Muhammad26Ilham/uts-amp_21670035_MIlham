import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perpus',
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,
      ),
      home: const profile_page(),
    );
  }
}

class profile_page extends StatelessWidget {
  const profile_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('Profile'),
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          )),
      body: Container(
        color: Colors.blueGrey,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(height: 20),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("asset/me.jpg"),
              ),
              Text('Description About Me', 
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),
              const SizedBox(height: 20),
              itemProfile('NAME', 'Muhammad Ilham Maarif P',
                  CupertinoIcons.person_fill),
              const SizedBox(height: 10),
              itemProfile('STUDY', 'UNIVERSITAS PGRI SEMARANG', CupertinoIcons.building_2_fill),
              const SizedBox(height: 10),
              itemProfile(
                  'EMAIL', 'ilham@gmail.com', CupertinoIcons.mail_solid),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.black26,
                spreadRadius: 2,
                blurRadius: 10)
          ]
          ),
        child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        //trailing: Icon(Icons.arrow_forward, color: const Color.fromARGB(255, 255, 255, 255)),
        tileColor: const Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}