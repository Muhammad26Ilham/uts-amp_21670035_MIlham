import 'package:flutter/material.dart';
import 'package:perpustakaan/profil.dart';
// import 'profil.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}


class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Dashboard'),
          backgroundColor: Colors.blueAccent,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => profile_page(),
                    ));
          }, icon: Icon(Icons.person))],
        ),
        body:
        GridView.count(
        crossAxisCount: 1,
        padding: EdgeInsets.all(25),
        children: <Widget>[Card(
         margin: const EdgeInsets.all(8),
            child: InkWell(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmDq54DiaiaU6Pgm-vrnjEg9wbwSH167svzZz5hzRNbPHY9TAfz6M_qxFPndeslwynHmE&usqp=CAU'),width: 200,),
                    // Icon(Icons.school_outlined, size: 75, color: Colors.blue),
                    Text("HUJAN BULAN JUNI", style: TextStyle(fontSize: 15.0)),
                  ],
                ),
              ),
            ) 
        ), 
        Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf2AXAQj7cilMlzo6g1O_1SaggbkI1TPXXBw&usqp=CAU'),width: 170,),
                      // Icon(Icons.school_outlined, size: 75, color: Colors.blue),
                      Text("MARIPOSA", style: TextStyle(fontSize: 15.0)),
                    ],
                  ),
                ),
              )
        ),
        Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBh9umlu-GpPWtdyiThhwTRZbmYnLXdawmUA&usqp=CAU'),width: 170,),
                      // Icon(Icons.school_outlined, size: 75, color: Colors.blue),
                      Text("AYAT AYAT CINTA", style: TextStyle(fontSize: 15.0)),
                    ],
                  ),
                ),
              )
        ),
        Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQasLpIk9Q-MqYD8f_IFNyXOuy1fdRmwBQTEw&usqp=CAU'),width: 200,),
                      // Icon(Icons.school_outlined, size: 75, color: Colors.blue),
                      Text("AYAH", style: TextStyle(fontSize: 15.0)),
                    ],
                  ),
                ),
              )
        ),
        ]
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.library_add),
            label: 'Addition',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
            )
          ],
        ),

      ),
    );
  }
}
