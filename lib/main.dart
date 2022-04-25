import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tech_mania/screens/cart.dart';
import 'package:tech_mania/widgets/listtile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TechMania',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'TechMania'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  List <HorizontalListItem> yListItems = [HorizontalListItem(text: 'text'),
    HorizontalListItem(text: 'text'),HorizontalListItem(text: 'text'),HorizontalListItem(text: 'text'),
    HorizontalListItem(text: 'text'),HorizontalListItem(text: 'text'),HorizontalListItem(text: 'text')];

  List <TechItem> listItems = [TechItem('assets/images/rm4.png', 'afdasfasf', 'dsfdsfdsf', '2343123'),
    TechItem('assets/images/rm4.png', 'afdasfasf', 'dsfdsfdsf', '2343123'),
    TechItem('assets/images/rm4.png', 'afdasfasf', 'dsfdsfdsf', '2343123'),
    TechItem('assets/images/rm4.png', 'afdasfasf', 'dsfdsfdsf', '2343123'),
    TechItem('assets/images/rm4.png', 'afdasfasf', 'dsfdsfdsf', '2343123'),
    TechItem('assets/images/rm4.png', 'afdasfasf', 'dsfdsfdsf', '2343123'),
    TechItem('assets/images/rm4.png', 'afdasfasf', 'dsfdsfdsf', '2343123'),
    TechItem('assets/images/rm4.png', 'afdasfasf', 'dsfdsfdsf', '2343123'),
    TechItem('assets/images/rm4.png', 'afdasfasf', 'dsfdsfdsf', '2343123'),
    TechItem('assets/images/rm4.png', 'afdasfasf', 'dsfdsfdsf', '2343123'),
    TechItem('assets/images/rm4.png', 'afdasfasf', 'dsfdsfdsf', '2343123'),
    TechItem('assets/images/rm4.png', 'afdasfasf', 'dsfdsfdsf', '2343123')];

  List <TechItem> selectedItems = [];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40.0,
              child: Material(
                elevation: 5,
                shadowColor: Colors.grey[900],
                child: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final item = yListItems[index];
                      return HorizontalListItem(text: item.text);
                    },
                    itemCount: yListItems.length,
                    shrinkWrap: true,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                final item = listItems[index];
                // ignore: void_checks
                return ListItem(item.image, item.title, item.category, item.price, () => log("Rfr"));
              },
              itemCount: listItems.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => CartScreen())
              );
            }, child: Text("korzina"),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                minimumSize: const Size.fromHeight(50), // NEW
              ),)
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
