

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
       title: const Center(
         child:
          Padding(
           padding: EdgeInsets.only(left:0, right: 25),
           child:
            Text('Contact', style: TextStyle(color: Colors.black, fontSize: 20)
           ),
         ),
       ),
      actions: const [
        Icon(Icons.more_vert, color: Colors.black,)
      ],
      elevation: 5,
      bottom: PreferredSize(child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(bottom: 9,top:0),
            child: CircleAvatar(backgroundImage: NetworkImage('https://images.unsplash.com/photo-1639752567895-656101fd55c3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNHx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=60'),
            radius: 60,
            ),
          ),
          Text('Daniel Amoako', style:TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold)),
          Text('Takoradi, Ghana', style: TextStyle(color: Colors.black, fontStyle: FontStyle.normal),)
        ],
      ), preferredSize: const Size.fromHeight(150)),
    ),
      backgroundColor: const Color.fromRGBO(220, 241, 226, 1),
    );
  }
}