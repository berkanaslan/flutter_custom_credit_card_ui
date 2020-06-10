import 'package:flutter/material.dart';
import "package:flutter_custom_credit_card_ui/flutter_custom_credit_card_ui.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Preview Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: CustomCreditCard(
                cardNumber: "5500000000000004",
                cardHolder: "LyhourChhen",
                year: 19,
                month: 20,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: CustomCreditCard(
                cardNumber: "4111111111111111",
                cardHolder: "LyhourChhen",
                year: 26,
                month: 21,
              ),
            )
          ],
        ),
      ),
    );
  }
}
