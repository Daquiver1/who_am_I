import 'package:flutter/material.dart';

final thebottomsheet =  Scaffold(
        backgroundColor: Colors.lightBlue[100],
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           // TextField for giving some Input
           TextField(
             decoration: InputDecoration(
               border: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.blue),
               ),
               hintText: "Type name",
               hintStyle: TextStyle(color: Colors.grey),
             ),
           ),
           SizedBox(height: 10),
            TextField(
             decoration: InputDecoration(
               border: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.blue),
               ),
               hintText: "Type description",
               hintStyle: TextStyle(color: Colors.grey),
             ),
           ),
            SizedBox(height: 10),
             
           //Button for adding items
           RaisedButton(
             color: Colors.black,
             child: Text("ADD",style: TextStyle(color: Colors.white)),
             onPressed: () => null,
             ),
         ],
       ),
      );