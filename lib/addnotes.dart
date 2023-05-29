
import 'package:flutter/material.dart';
 
 
 class AddNotes extends StatefulWidget {
   const AddNotes({Key? key}) : super(key: key);
 
   @override
   State<AddNotes> createState() => _AddNotesState();
 }
 
 class _AddNotesState extends State<AddNotes> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Add Note'),
         centerTitle: true,
       ),

     body:Container(
         child: Column(children: [
           Form(child: Column(children: [

             TextFormField(
               maxLength: 30,
               decoration: InputDecoration(
               filled: true,
               fillColor: Colors.white,
               labelText: "Title Notes",

             prefixIcon: Icon(Icons.note),

             ),
             ),
           TextFormField(
             maxLines: 3,
             minLines: 1,
             maxLength: 200,
             decoration: InputDecoration(
                 filled: true,
                 fillColor: Colors.white,
                 labelText: " Notes",
               prefixIcon: Icon(Icons.note)),
           ),
 const SizedBox(height: 30),
                    Container(width:300,
                    height: 55,
                   decoration: BoxDecoration(
                   color: Color(0xffF9A826),
                       borderRadius: BorderRadius.all(
                   Radius.circular(12))
                   ),
                      child:  MaterialButton
                        (onPressed: () {

                      },
                          child: Text
                            ('Add',
                            style:const TextStyle
                        (color:Colors.black ),
                      ),
                      ) ,
                        ),





           ]
           ))
         ],)
       ) ,
     );
   }
 }
 