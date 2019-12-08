import 'package:flutter/material.dart';
import 'view/page_kedua.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PageHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //entity, A : widget
        title: Text('Apps Basic FLutter'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        //child : 1 widget : text, button, image, container, dll
        //children : > 1 widget : colun, row, listview

        child: Column(
          children: <Widget>[
            Text(
              'Ini Project Pertama Flutter',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),

            Image.asset('gambar/wisata_alam.jpg', height: 200,width: double.infinity,),

            //jarak
            //container
            //sizebox
            SizedBox(
              height: 10,
            ),
            //button
            //flat button, raised button, material button
            MaterialButton(
              color: Colors.green,
              textColor: Colors.white,
              onPressed: () {
                //navigate ke page 1
                //push : class A ke class  B
                //pop : class b ke class A
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> PagePertama()
                ));
              },
              child: Text('wisata_alam.jpg 1'),
            ),
            SizedBox(
              height: 10,
            ),

            MaterialButton(
              color: Colors.green,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> PageKedua()
                ));

              },
              child: Text('Page 2'),
            ),
          ],
        ),
      ),
    );
  }
}

//pindah page/ class
//navigate

class PagePertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Page Pertama'),
      ),

      body: Container(
        child: Center(
          child: Text('Ini Page Pertama', style: TextStyle(
            fontSize: 20,
            color: Colors.orange
          ),),
        ),
      ),
    );
  }
}



