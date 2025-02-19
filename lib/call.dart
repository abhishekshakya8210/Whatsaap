import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
class Call extends StatefulWidget{
  const Call({super.key});

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {

  List<PieChartSectionData> data=[
PieChartSectionData(title: '40%'
,radius: 50,value: 40,color: Colors.blue,titleStyle:
 TextStyle(fontWeight: FontWeight.w800,color: Colors.black
)),
PieChartSectionData(title: '50%'
,radius: 50,value:  50,color: Colors.red,titleStyle:
 TextStyle(fontWeight: FontWeight.w800,color: Colors.black
)),
PieChartSectionData(title: '45%'
,radius: 50,value: 35,color: Colors.green,titleStyle:
 TextStyle(fontWeight: FontWeight.w800,color: Colors.black
)),
PieChartSectionData(title: '47%'
,radius: 50,value: 47,color: Colors.pink,titleStyle:
 TextStyle(fontWeight: FontWeight.w800,color: Colors.black
)),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: 
        PieChart(
       

            PieChartData(
                   sectionsSpace: 7,
              centerSpaceRadius: 30,
              
              sections:data
                
              
            ),
          ),
    );
  }
}