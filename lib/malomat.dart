import 'package:flutter/material.dart';

import 'lists.dart';


class Malomat extends StatefulWidget {
  Malomat({Key key}) : super(key: key);

  _MalomatState createState() => _MalomatState();
}

class _MalomatState extends State<Malomat> {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(

      itemCount: MalomatList.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // number of button in row
        childAspectRatio: 2,
      ),

      itemBuilder: (BuildContext context, int index){
        return SingleMalomatList(
          prodtitle: MalomatList[index]['title'],
          prodcolor: MalomatList[index]['color'],

        );
      },
    );
  }
}

class SingleMalomatList extends StatelessWidget {
  final prodtitle;
  final prodcolor;




  SingleMalomatList({
    this.prodtitle,
    this.prodcolor,



  });



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Flex(

        direction: Axis.vertical,
        children: <Widget>[
          Expanded(
              child: Material(
                elevation: 10,
                    borderRadius: BorderRadius.circular(20),
                    color:  Color(0xff453658),
                child: Center(
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(prodtitle,
                      style: TextStyle(color: Colors.blueGrey[100],fontWeight: FontWeight.w900,fontSize: 18),
                      textAlign: TextAlign.center,),
                  ),
                ),
              )),
        ],
      ),
    );

  }
}
class MalomatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff392850),
      appBar: AppBar(
        title: Text("Muslim",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
        backgroundColor: Color(0xff453658),
        centerTitle: true,
        elevation: 10,
      ),
      body: Malomat(),
    );
  }
}

