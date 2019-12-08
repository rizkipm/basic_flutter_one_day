
import 'package:flutter/material.dart';

class PageKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Page Kedua'),
      ),

      body: Container(
        child: Center(
          child: Text('Ini Page Kedua', style: TextStyle(
              fontSize: 20,
              color: Colors.orange
          ),),
        ),
      ),
    );
  }
}

