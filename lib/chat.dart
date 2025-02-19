import 'package:flutter/material.dart';
import 'package:whataap/massige.dart';
class Chat extends StatefulWidget{
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List dataList = [
    {
      'image': 'assets/b-1.png',
      'title': 'shiva shakya',
      'subtitle': 'hello shiva how are you ❤️',
      'trailing': '2:30 pm',
    },
     {
      'image': 'assets/b-2.png',
      'title': 'Abhi Pathak',
      'subtitle': 'hi abhi ',
      'trailing': '1:00 pm',
    },
    {
      'image': 'assets/b-3.png',
      'title': 'Atik khan',
      'subtitle': 'hello Sir i have a que... ',
      'trailing': '1:32 pm',
    },
    {
      'image': 'assets/b-4.png',
      'title': 'Ms. Riya ',
      'subtitle': 'how to manage your time',
      'trailing': '12:3 am',
    },
    {
      'image': 'assets/b-5.png',
      'title': 'Sahil shakya',
      'subtitle': 'hello  how are you ',
      'trailing': '2:10 pm',
    },
    {
      'image': 'assets/b-6.png',
      'title': 'Sonakshi sharma',
      'subtitle': 'Typing... 👍',
      'trailing': '2:30 pm',
    },
    {
      'image': 'assets/b-7.png',
      'title': 'Anamika Jain',
      'subtitle': 'hi',
      'trailing': '2:33 pm',
    },
    {
      'image': 'assets/b-8.png',
      'title': 'Atul',
      'subtitle': 'hi brother you know ',
      'trailing': '8:30 am',
    },
    {
      'image': 'assets/b-9.png',
      'title': 'surendra pajput',
      'subtitle': 'Namaste uncle',
      'trailing': '1:08 pm',
    },
    {
      'image': 'assets/b-10.png',
      'title': 'Neelam (nilu)',
      'subtitle': 'apki mammi keasi h',
      'trailing': '7:11 am',
    },
    {
      'image': 'assets/b-11.png',
      'title': 'Gunda',
      'subtitle': 'hello bhai sa',
      'trailing': '8:23 am',
    },
    {
      'image': 'assets/b-12.png',
      'title': 'Khusabu .',
      'subtitle': 'hey now you free',
      'trailing': '2:30 am',
    },
    {
      'image': 'assets/b-13.png',
      'title': 'Kisan shakya',
      'subtitle': 'our bhai',
      'trailing': '6:00 pm',
    },
    {
      'image': 'assets/b-14.png',
      'title': 'Shivani pandey',
      'subtitle': 'you are my best freind',
      'trailing': '8:12 pm',
    },
    {
      'image': 'assets/b-15.png',
      'title': '@MS RICHA ',
      'subtitle': ' you are bext girl in the world',
      'trailing': '2:44 pm',
    },
    {
      'image': 'assets/b-16.png',
      'title': 'Abhishek shakya',
      'subtitle': 'hello Abhishek how are you ❤️',
      'trailing': '2:30 pm',
    },
    {
      'image': 'assets/b-17.png',
      'title': '# PRASHANT #',
      'subtitle': 'hello  how are you ',
      'trailing': '2:30 pm',
    },
    {
      'image': 'assets/b-18.png',
      'title': '--Nature--',
      'subtitle': 'hello save the world',
      'trailing': '9:30 pm',
    },
    {
      'image': 'assets/b-19.png',
      'title': 'Raju alu bale ',
      'subtitle': 'hello bhai aalu ke kya price h',
      'trailing': '4:13 am',
    },
    {
      'image': 'assets/b-20.png',
      'title': 'Suraj bhind',
      'subtitle': 'exam kab h',
      'trailing': '5:40 pm',
    },
    {
      'image': 'assets/b-21.png',
      'title': 'Gaytri dubey',
      'subtitle': 'hi gaytri how are you ',
      'trailing': '2:30 pm',
    },
    {
      'image': 'assets/b-22.png',
      'title': 'Gumnam sayar-',
      'subtitle': 'khelega free fire',
      'trailing': '12:25 pm',
    },
    {
      'image': 'assets/b-23.png',
      'title': '* mother princess',
      'subtitle': 'hi cute girl',
      'trailing': '11:08 am',
    },
    {
      'image': 'assets/b-24.png',
      'title': 'pradeep sagar',
      'subtitle': ' how are you ',
      'trailing': '9:30 pm',
    },
    {
      'image': 'assets/b-25.png',
      'title': 'sahid',
      'subtitle': 'hi print(hello world);',
      'trailing': '10:25 am',
    },
    {
      'image': 'assets/b-26.png',
      'title': '❤️cute❤️',
      'subtitle': 'hello cute ❤️',
      'trailing': '2:30 pm',
    },
    {
      'image': 'assets/b-27.png',
      'title': 'Paradox index',
      'subtitle': 'hello flutter company hire you',
      'trailing': '7:47 am',
    },
  ];

  
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 1, 18),
      
      body:
      ListView.builder(
        itemCount: dataList.length,
        scrollDirection: Axis.vertical,

        itemBuilder: (context,index){
        return GestureDetector(
          onTap: () {
            Navigator.push(context,
           MaterialPageRoute(builder: (context)=>Massige(username:dataList[index]['title']!) ));
 
          },
                   child: ListTile(
            
          
                   leading: CircleAvatar(
                    radius:40 ,
                    backgroundImage: AssetImage(dataList[index]['image']!),
                    ),
                   title: Text(dataList[index]['title']!,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800,
                   color: Colors.white),),
                   subtitle:Text(dataList[index]['subtitle']!,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,
                   color: Colors.grey.shade300),) ,
                   trailing: Text(dataList[index]['trailing']!,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,
                   color: Colors.white),),
          ),
        );
      })
    );
  }
}