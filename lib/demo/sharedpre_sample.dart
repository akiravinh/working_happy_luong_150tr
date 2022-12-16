import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('WORKING HAPPY LUONG 150TR - high score'),
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

class VinhApp extends StatefulWidget {
  const VinhApp({super.key});

  @override
  State<VinhApp> createState() => _VinhAppState();
}

class _VinhAppState extends State<VinhApp> {
  int _mark = 0;

  @override
  void initState() {
    super.initState();
    loadScore();
  }

  void loadScore() async {
    final data_mark = await SharedPreferences.getInstance();
    setState(() {
      _mark = data_mark.getInt('mark') ?? 0;
    });
  }

  void _plus() async {
    final data_mark = await SharedPreferences.getInstance();
    setState(() {
      _mark = (data_mark.getInt('mark') ?? 0) + 1;
      data_mark.setInt('mark', _mark);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Text("${_mark}"),
          ),
          ElevatedButton(
            onPressed: _plus,
            child: Icon(Icons.translate),
          )
        ],
      ),
    );
  }
}
