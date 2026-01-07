import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: DataList()));
}

class DataList extends StatefulWidget {
  @override
  _DataListState createState() => _DataListState();
}

class _DataListState extends State<DataList> {
  List<Quote> qoutes= [
   Quote(author: 'Osca wilde', text: 'The only way to do great work is to love what you do.'),
    Quote(author: 'Albert Einstein', text: 'Life is like riding a bicycle. To keep your balance you must keep moving.'),
    Quote(author: 'Yoda', text: 'Do, or do not. There is no try.'),
    Quote(author: 'Marilyn Monroe', text: 'Imperfection is beauty, madness is genius and it\'s better to be absolutely ridiculous than absolutely boring.'),
    Quote(author: 'Frank Zappa', text: 'So many books, so little time.'),
    Quote(author: 'Marcus Tullius Cicero', text: 'A room without books is like a body without a soul.')   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "list of Qoutes",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
            fontFamily: 'Arial',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(children: qoutes.map((quote){
        return Text('${quote.text} it\'s author name ---> ${quote.author}');

      }).toList(),

        
      )
    );
  }
}
