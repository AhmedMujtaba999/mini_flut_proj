import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Card()));
}

class Card extends StatefulWidget {
  const Card({super.key});

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  int ahmedLevel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          "My ID Card",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          
          Center(child: CircleAvatar(
            backgroundImage: AssetImage('assets/img1.jpg'),
            radius: 50.0,
          ),),
          Divider(
            height: 80.0,
            color: Colors.grey[800],
          ),



            Text(
              "NAME",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(height: 10.0),
            Text(
              "AHMED ALI",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0),

            Text(
              "CURRENT LEVEL",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(height: 10.0),
            Text(
              "$ahmedLevel",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(Icons.email, color: Colors.grey[400]),
                SizedBox(width: 10.0),
                Text(
                  "ahmedali@example.com",
                  style: TextStyle(color: Colors.white, fontSize: 18.0,
                  letterSpacing: 1.0),   
                ),
              ],
            ),




          ],
        ),
      ),
     floatingActionButton: FloatingActionButton(

      onPressed: (){
       setState((){
        ahmedLevel+=1;
       });
      },
      child: Icon(Icons.add, color: Colors.white,),
      backgroundColor: Colors.grey[800],
     ),

    );
  }
}
