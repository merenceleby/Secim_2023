import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class secim extends StatefulWidget{
  @override
  State<secim> createState() => _secimState();
}

class _secimState extends State<secim> {
  int erdogan = 0;
  int muharrem = 0;
  int kilicdar = 0;
  int sinan = 0;

void restart(){
  setState(() {
  erdogan = 0;
  muharrem = 0;
  kilicdar = 0;
  sinan = 0;
  });
 
}
void _Tayyipartir(){
  setState(() {
    erdogan +=1;
  });
}
void _Tayyipeksilt(){
  setState(() {
    erdogan -= 1;
  });
}

void _keartir(){
  setState(() {
    kilicdar +=1;
  });
}
void _keeksilt(){
  setState(() {
    kilicdar -= 1;
  });
}
void _sia(){
  setState(() {
    sinan +=1;
  });
}
void _isnaneksilt(){
  setState(() {
    sinan -= 1;
  });
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.how_to_vote),title: Text("Secim Takip",),titleSpacing: 5,centerTitle: true, actions: [ElevatedButton(onPressed: restart, child: Icon(Icons.restart_alt))],),
      body: Column(
        children: [
          Spacer(flex: 2,),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    child: Column(children: [
                      Image.asset("assets/recep.jpg"),
                      Text("Recep Tayyip \nErdoğan"),
                      Text(erdogan.toString()),
                      ElevatedButton(onPressed: _Tayyipartir, child: Icon(Icons.add)),
                      ElevatedButton(onPressed: _Tayyipeksilt, child: Icon(Icons.delete_forever_outlined))
                    ]),
                  ),
                ),
                
                Expanded
                (
                  child: Card(
                   
                    child: Column(children: [
                      Image.asset("assets/kemal.jpg"),
                      Text("Kemal \nKılıcdaroglu"),
                      Text(kilicdar.toString()),
                      ElevatedButton(onPressed: _keartir, child: Icon(Icons.add)),
                      ElevatedButton(onPressed: _keeksilt, child: Icon(Icons.delete_forever_outlined)),
                      
                    ],
                    ),
                  ),
                ),
                Expanded
                (
                  child: Card(
                    child: Column(children: [
                      Image.asset("assets/sinan.jpg"),
                      Text("Sinan \nOğan"),
                      Text(sinan.toString()),
                      ElevatedButton(onPressed: _sia, child: Icon(Icons.add)),
                      ElevatedButton(onPressed: _isnaneksilt, child: Icon(Icons.delete_forever_outlined))
                    ]),
                  ),
                ),
              ],
            ),
          ),
          Spacer(flex: 2,)
        ],
      ),
    );
  }
}

