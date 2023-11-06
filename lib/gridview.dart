import 'package:flutter/material.dart';
import 'package:gridview/model/gridmodel.dart';

class Grid extends StatefulWidget {
  const Grid({super.key});

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  List items =[
    GridModel(title: "Home", ico: Icon(Icons.home),color: Colors.red),
    GridModel(title: "Email", ico: Icon(Icons.email),color: Colors.blueGrey),
    GridModel(title: "Alarm", ico: Icon(Icons.alarm),color: Colors.green),
    GridModel(title: "Wallet", ico: Icon(Icons.wallet),color: Colors.purple),
    GridModel(title: "Backup", ico: Icon(Icons.backup),color: Colors.yellow),
    GridModel(title: "Book", ico: Icon(Icons.book),color: Colors.lightBlue),
    GridModel(title: "Camera", ico: Icon(Icons.camera_alt),color: Colors.grey),
    GridModel(title: "Person", ico: Icon(Icons.person),color: Colors.orange),
    GridModel(title: "Print", ico: Icon(Icons.print),color: Colors.pinkAccent),
    GridModel(title: "Phone", ico: Icon(Icons.phone),color: Colors.redAccent),
    GridModel(title: "Notes", ico: Icon(Icons.note_alt_sharp),color: Colors.lightGreen),
    GridModel(title: "Music", ico: Icon(Icons.music_note),color: Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GridView"),
          backgroundColor: Colors.brown,
        ),
        backgroundColor: Colors.black,
        body:Container(
            padding: EdgeInsets.all(12.0),
            child: GridView.builder(
              itemCount: items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: items[index].color,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      items[index].ico,
                      SizedBox(height: 8.0),
                      Text(items[index].title, style: TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.bold), ),
                    ],
                  ),
                );
              },
            )

        )



    );

  }
}
