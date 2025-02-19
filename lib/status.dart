
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:qr_flutter/qr_flutter.dart';
class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  String selectedTime = 'No time selected';
  String selectedDate = 'No date selected';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () async {
              TimeOfDay? pickedTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              if (pickedTime != null) {
                setState(() {
                  selectedTime = pickedTime.format(context);
                });
              }
            },
            child: Text('Select Time'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );
              if (pickedDate != null) {
                setState(() {
                  selectedDate = '${pickedDate.toLocal()}'.split(' ')[0];
                });
              }
            },
            child: Text('Select Date'),
          ),
          SizedBox(height: 20),
          Text('Selected Time: $selectedTime'),
          Text('Selected Date: $selectedDate'),
          SizedBox(height: 20,),
          Text('Pai chart',style: TextStyle(fontSize: 
          40,fontStyle: FontStyle.italic,fontWeight: FontWeight.w800,color: Colors.blue),),

     
          Text('abhishik',style: TextStyle(fontSize: 30, color: Colors.red),),
          SizedBox(height: 20,),
          Container(
            height: 200,
            width: 200,
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Stack(
              children: [
                QrImageView(

                  foregroundColor: Colors.grey,
              embeddedImage: AssetImage('assets/b-1.png'),
                     data: '1234567890',
                    version: QrVersions.auto,
                        size: 200.0,
                        ),
                          SizedBox(height: 20,),
                        
              ],
            ),
          ),
             Padding(
               padding: const EdgeInsets.all(45),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
               Icon(FontAwesome.google_pay_brand,size: 40,),
               Icon(FontAwesome.instagram_brand,size: 40,),
               Icon(FontAwesome.amazon_pay_brand,size: 40,)
               
               ],),
             )
            
        ],
      ),
    );
  }
}



