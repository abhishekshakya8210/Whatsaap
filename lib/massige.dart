import 'package:flutter/material.dart';
import 'package:whataap/myMassige.dart'; 
import 'package:whataap/youMassige.dart'; 

// ignore: must_be_immutable
class Massige extends StatefulWidget {
  Massige({super.key, required this.username});
  String username;

  @override
  State<Massige> createState() => _MassigeState();
}

class _MassigeState extends State<Massige> {
  TextEditingController _controller = TextEditingController();

  List messages = [
    {
      'isMe': false,
      'text': 'hey you are coming to the party?',
      'time': '8:12 am'
    },
    {
      'isMe': true,
      'text': 'yeah you can do this work',
      'time': '6:00',
    },
     {
      'isMe': false,
      'text': 'OK I will try👍👍',
      'time': '8:12 am'
    },
    {
      'isMe': true,
      'text': 'Thanks...',
      'time': '6:00',
    },
    
  ];

  
  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        messages.add({
          'isMe': true,
          'text': _controller.text,
          'time': 'Now', 
        });
      });
      _controller.clear(); 
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.username,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic,
                color: Colors.white),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 30,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 4, 1, 18),
        ),
        bottomNavigationBar: Container(
          height: 70,
          width: double.maxFinite,
          color: Colors.grey.shade800,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.02,
                ),
                Icon(
                  Icons.camera_alt_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.02,
                ),
                Expanded(
                  child: TextField(
                    cursorColor: Colors.white,cursorWidth: 3,cursorHeight: 35,
                    style: TextStyle(color: Colors.white,fontSize: 17),
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Enter your message',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 22),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.02,
                ),
                IconButton(
                  icon: Icon(
                    Icons.send,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Image.asset(
                'assets/chat.png', 
                fit: BoxFit.cover,
              ),
            ),
            ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return messages[index]['isMe']
                    ? myMassige(messageText: messages[index]['text'])
                    : YouMassige(messageText: messages[index]['text']);
              },
            ),
          ],
        ),
      ),
    );
  }
}
