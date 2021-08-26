import 'package:flutter/material.dart';
import 'package:slideparallax/slideparallax.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            SlideParallax(
              header: Image.network(
                'https://images.tokopedia.net/img/cache/240/PYbRbC/2021/8/6/d1c4b788-27f3-463d-b40c-d2b1a6c845df.png.webp?ect=4g',
                height: 300,
              ),
              height: 300,
              width: MediaQuery.of(context).size.width,
              // headerSpacing: 150,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    width: 150,
                    color: Colors.red,
                  ),
                );
              },
              footer: ElevatedButton(
                  onPressed: () {
                    print('object');
                  },
                  child: Text('Lainnya')),
            ),
          ],
        ));
  }
}
