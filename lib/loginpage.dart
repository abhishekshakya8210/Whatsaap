import 'package:flutter/material.dart';
import 'package:whataap/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              SizedBox(height: MediaQuery.sizeOf(context).height*0.05 
              ),
            Image(image: AssetImage('assets/logo.png')),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.05 
              ),
              Text('Login',style: TextStyle(fontSize:
               40,fontStyle: FontStyle.italic,color: Colors.black,fontWeight: FontWeight.w800),),
               
              Text('Fill the all detaile',style: TextStyle(fontSize:
               20,fontStyle: FontStyle.italic,color: Colors.grey,fontWeight: FontWeight.w700),),
                SizedBox(height: MediaQuery.sizeOf(context).height*0.02
              ),
           
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter you Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
                
              ),
              
            ),
             SizedBox(height: MediaQuery.sizeOf(context).height*0.03 
              ),
           
                 TextField(
              decoration: InputDecoration(
                hintText: 'Enter you Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
                
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.03 
              ),
           
               Container(
                height: MediaQuery.sizeOf(context).height*0.07,
                width: MediaQuery.sizeOf(context).width*0.8,
        
                 child: ElevatedButton(
                  
                 style: ElevatedButton.styleFrom(
                     
                   
                     backgroundColor: Colors.green, 
                   ),
                  onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>HomePage()));
                  }, child: Text('Login',style: TextStyle(fontSize: 30,fontWeight:
                   FontWeight.w800,fontStyle: FontStyle.italic,color: Colors.black),)),
               ),
               SizedBox(height: MediaQuery.sizeOf(context).height*0.03 
              ),
           
             Container(
                height: MediaQuery.sizeOf(context).height*0.07,
                width: MediaQuery.sizeOf(context).width*0.8,
        
                 child: ElevatedButton(
                  
                 style: ElevatedButton.styleFrom(
                     
                   
                     backgroundColor: Colors.white, 
                   ),
                  onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                backgroundColor:Colors.green ,
                                content: Text('Okay you have a account'),
                                )
                               
                               );
        
                  }, child: Text('Do not have an account? Sign up',style: TextStyle(fontSize: 19,fontWeight:
                   FontWeight.w600,fontStyle: FontStyle.italic,color: Colors.green),)),
               ),
            ],),
          ),
        ),
      )
    );
  }
}