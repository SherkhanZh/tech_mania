import 'package:flutter/material.dart';

class TechItem {
  String image;
  String title;
  String category;
  String price;
  TechItem(this.image, this.title, this.category, this.price);
}

class ListItem extends StatelessWidget {
  String image;
  String title;
  String category;
  String price;
  void onPressed;

  ListItem(this.image, this.title, this.category, this.price, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: Colors.grey[900],
      child: Padding(
        padding: EdgeInsets.only(top: 6.0),
        child: ListTile(
          leading: Image.asset(image),
          title: Text(title),
          subtitle: Column(
            children: [Text(category),
            Row(children: [Text(price), ElevatedButton(onPressed: (){}, child: Text("press"))],mainAxisAlignment:
              MainAxisAlignment.spaceBetween,)],
          ),
          tileColor: Colors.white,

        ),
      ),
    );
  }
}

class HorizontalListItem extends StatelessWidget {
  String text;
  HorizontalListItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(10.0),width: 160.0, height: 10, color: Colors.white,
        child: Text(text, textAlign: TextAlign.center));
  }
}

