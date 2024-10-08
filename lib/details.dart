import 'package:flutter/material.dart';

class DetailsItems extends StatefulWidget {
  final data;
  const DetailsItems({Key? key, this.data}) : super(key: key);

  @override
  State<DetailsItems> createState() => _DetailsItemsState();
}

class _DetailsItemsState extends State<DetailsItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black26,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: "*"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: "*"),
        ],
      ),
      endDrawer: Drawer(),
      appBar: AppBar(
          backgroundColor: Colors.grey[200],
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.grey, size: 40),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Jeem",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                " Store",
                style: TextStyle(color: Colors.orange),
              ),
            ],
          )
          // centerTitle: true,
          ),
      body: ListView(
        children: [
          Image.asset(widget.data["image"]),
          Container(
            child: Text(
              widget.data["name"],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Text(
              widget.data["spec"],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          Container(
            height: 20,
          ),
          Container(
            child: Text(
              widget.data["price"],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Color : "),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue)),
              ),
              SizedBox(
                width: 5,
              ),
              Text("Black"),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 0,
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.orange)),
              ),
              SizedBox(
                width: 5,
              ),
              Text("Blue")
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 90),
            padding: EdgeInsets.only(top: 30),
            child: MaterialButton(
              height: 50,
              color: Colors.black,
              textColor: Colors.white,
              onPressed: () {},
              child: Text(
                "Add To Cart",
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
