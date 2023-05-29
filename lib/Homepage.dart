import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  const  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.of(context).pushNamed("addnotes");
        },
      ),
      body:  Center(
         child:Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
         Image.asset('assets/imge.png',
        width: 300),
               Text('Notes'),
      ]
      ),





        //Container(
        //   width: 200,
        //   height: 200,
        //   decoration: BoxDecoration(
        //     color: Colors.blue,
        //     borderRadius:const  BorderRadius.only(
        //         topLeft: Radius.circular(25),
        //         bottomRight:Radius.circular (50)
        //     ),
        //       border: Border.all(color: Colors.black, width: 5)
        //   ),
        //
        // ),



      ),
    );
  }

}