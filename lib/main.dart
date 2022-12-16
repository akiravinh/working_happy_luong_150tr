import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('LUONG 150TR'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ),
      body: VinhApp(),
    ),
    title: 'FULL',
  ));
}

class VinhApp extends StatelessWidget {
  const VinhApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Gai xinh');
      },
      child: Container(
        height: 50,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.lightGreen[500]),
        child: Center(
          child: Text('Co phai  nguoi yeu ko'),
        ),
      ),
    );
  }
}
