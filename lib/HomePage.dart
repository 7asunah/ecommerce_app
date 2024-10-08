import 'package:ecommerce_ui/details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List Cat = [
    {"iconname": Icons.laptop, "title": "Laptop"},
    {"iconname": Icons.android, "title": "Android"},
    {"iconname": Icons.ios_share, "title": "iPhone"},
    {"iconname": Icons.card_giftcard_outlined, "title": "Gift"},
    {"iconname": Icons.car_crash, "title": "Gift"}
  ];

  List bist = [
    {
      "image": "images/1.png",
      "name": "M19",
      "spec": "Wireless HeadPhone",
      "price": "7000 RY"
    },
    {
      "image": "images/123.jpg",
      "name": "M10",
      "spec": "Wireless HeadPhone",
      "price": "9000 RY"
    },
    {
      "image": "images/123.jpg",
      "name": "M10",
      "spec": "Wireless HeadPhone",
      "price": "9000 RY"
    },
    {
      "image": "images/1.png",
      "name": "M19",
      "spec": "Wireless HeadPhone",
      "price": "7000 RY"
    }
  ];
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
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      )),
                )),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.menu,
                    size: 40,
                  ),
                )
              ],
            ),
            Container(
              height: 30,
            ),
            Text(
              "Categories",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 20,
            ),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Cat.length,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Cat[i]["iconname"],
                          size: 50,
                        ),
                        padding: EdgeInsets.all(15),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          Cat[i]["title"],
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            Text(
              "Best Silling",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            GridView.builder(
              itemCount: bist.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 250),
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailsItems(
                              data: bist[i],
                            )));
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          width: 150,
                          color: Colors.white,
                          child: Image.asset(
                            bist[i]["image"],
                            height: 130,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          bist[i]["name"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Container(
                          height: 2,
                        ),
                        Text(
                          bist[i]["spec"],
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Container(
                          height: 6,
                        ),
                        Text(bist[i]["price"],
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
