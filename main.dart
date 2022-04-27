import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, // Add this
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.blue, size: 30), // The title text which will be shown on the action bar
        title: Center(
          child: Text(
            "Add Product  ",
            style: TextStyle(fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
        actions: <Widget>[
          Icon(
            Icons.search,
            color: Colors.white,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(8.0, 5.0, 5.0, 4.0),
        child: Column(
          children: [
            Container(
              width: 600,
              child: Text(
                'Product Name',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Enter product name", border: OutlineInputBorder()),
              keyboardType: TextInputType.text,
            ),
            Container(
              width: 600,
              child: Text(
                'Product ID',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            const TextField(
              decoration: InputDecoration(hintText: "Enter product id", border: OutlineInputBorder()),
              keyboardType: TextInputType.text,
            ),
            Container(
              width: 600,
              child: Text(
                'Price',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            const TextField(
              decoration: InputDecoration(hintText: "Enter product price", border: OutlineInputBorder()),
              keyboardType: TextInputType.text,
            ),
            Container(
              width: 600,
              child: Text(
                'Stock',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            const TextField(
              decoration: InputDecoration(hintText: "Enter product stock", border: OutlineInputBorder()),
              keyboardType: TextInputType.text,
            ),
            Container(
              width: 600,
              child: Text(
                'Description',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            const TextField(
              decoration: InputDecoration(hintText: "Enter product description", border: OutlineInputBorder()),
              keyboardType: TextInputType.text,
            ),
            Container(
              width: 380,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Kirim",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
