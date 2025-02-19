import 'package:flutter/material.dart';

// ignore: must_be_immutable
class YouMassige extends StatelessWidget {
   YouMassige({super.key,
  
  required this.messageText
  
  
  });
  String messageText;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
                 margin: EdgeInsets.only(left: 20,top: 40),
        width: MediaQuery.sizeOf(context).width* 0.50,
        decoration: BoxDecoration(
          color: Colors.grey.shade800,
        borderRadius: BorderRadius.only(topRight: Radius.circular(15),
        bottomRight: Radius.circular(25))
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(messageText,style: 
          TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white),),
        ),
      ),
    );
  }
}