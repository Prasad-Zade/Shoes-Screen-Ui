import "package:flutter/material.dart";

void main() {
  runApp(ShoesApp());
}

class ShoesApp extends StatefulWidget {
  const ShoesApp({super.key});

  @override
  State<ShoesApp> createState() {
    return ShoesAppState();
  }
}

int quantity = 0;
class ShoesAppState extends State<ShoesApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Shoes",
            style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          actions: [
            Icon(Icons.shopping_cart, color: Colors.deepPurpleAccent),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 450,
              width: double.infinity,
              child: Image.network(
          "https://images.milledcdn.com/2021-04-03/OUSjRRBMIBNqzySb/lew-tyPQTEIF.jpeg",
          fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Nike Air Max 270",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    width: 80,
                    height: 40,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "SHOES",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: 115,
                  height: 40,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "FOOTWEAR",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("With iconic style and legendary comfort, the AF-1 was made to be worn on repeat. This iteration puts a fresh spin on the hoopsclassic with crisp leather, era-echoing '80s construction and reflective-design Swoosh logos.", 
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
            ),

            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Quantity",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ButtonTheme(child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        if (quantity > 0) {
                          quantity--;
                        }
                        setState(() {});
                      },
                    ),
                    Text(
                      "$quantity",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 200),
                      child: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          quantity++;
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ))
              ],
            ),
            SizedBox(height: 5),
            Container(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      "PURCHASE",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
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





