import 'package:flutter/material.dart';
import 'package:perpustakaan/dashboard.dart';
//import 'dashboard.dart';
//import 'profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: IntroPage (),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30),),
              SizedBox(height: 11,),
              Text(
                'Welcome to E Perpustakaan',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,),
              SizedBox(height: 65),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: TextStyle(fontSize: 12,
                    fontWeight: FontWeight.bold),),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Username',
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17)
                      ),
                    ),
                  ),
                  Text(
                    'Password',
                    style: TextStyle(fontSize: 12,
                    fontWeight: FontWeight.bold,),),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                        suffixIcon: Icon(Icons.visibility)
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Remember me!', style: TextStyle(
                        fontSize: 12
                      ),),
                    ],
                  ),
                  Text('Forgot Password?', style: TextStyle(
                        fontSize: 12
                      ),),
                ],
              ),
              SizedBox(height: 32,),
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => home_page(),
                     ));
                  },
                  child: Text('LOGIN'),
                  ),
                ),
              //SizedBox(height: 32,),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You not have an account yet?"),
                  SizedBox(width: 5),
                  Text("Sign up", style: TextStyle(color: Colors.blue)),
                ],
              )
            ],
          ),
        ),

      ),
    );
  }
}