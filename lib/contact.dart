import 'package:contactapp/new_profile.dart';
import 'package:flutter/material.dart';


class ContactPage extends StatelessWidget {
  const ContactPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
    appBar: AppBar(
      backgroundColor: Colors.white,
      title: const Padding(
        padding:  EdgeInsets.all(8.0),
        child:  Text("My Contacts", style: TextStyle(fontSize: 25, fontStyle: FontStyle.normal, color: Colors.black),),
      ),
      actions: [Padding(
        padding: const EdgeInsets.only(right:8.0),
        child: InkWell( onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Profile();
          }));
        },
          child: CircleAvatar(backgroundImage:
           NetworkImage(
            "https://images.unsplash.com/photo-1639332793139-32eed37bdc99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60"),
          radius: 25,
          ),
        ),
      ),
     ],
      elevation: 5,
      bottom: PreferredSize(child: TextField(
        decoration: InputDecoration(border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25)),
          prefixIcon: const Icon(Icons.search),
          hintText: "Search by name or number",
          ),
      ), preferredSize: const Size.fromHeight(90),),
    ),
    body: 
   ListView(
     children: const [
        Padding(
          padding: EdgeInsets.only(top:40, right: 90,left: 20),
          child: Text('Recents', style: TextStyle(color: Color.fromRGBO( 102, 99, 99, 1),fontSize: 20,),),
        ),
      ListTile(
        leading: Padding(
          padding: EdgeInsets.only(top:10),
          child: CircleAvatar(backgroundImage:
           NetworkImage('https://images.unsplash.com/photo-1639569349218-84a565067623?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
          radius: 30,
          ),
        ),
        title: Text('Betty',style: TextStyle(
          color: Colors.black, 
        fontSize:20,)
        ),
        subtitle: Text('+233 54 72 48 659', style:TextStyle(
          color: Colors.black,fontSize: 15,)
          ),
          trailing: Padding(
            padding: EdgeInsets.only(top:20),
            child: Icon(Icons.more_horiz),
          ),
      ),
      Divider(thickness: 2,height: 0,),
       ListTile(
        leading: Padding(
          padding: EdgeInsets.only(top:10),
          child: CircleAvatar(backgroundImage:
           NetworkImage('https://images.unsplash.com/photo-1639569349218-84a565067623?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
          radius: 30,
          ),
        ),
        title: Text('Cynthia',style: TextStyle(
          color: Colors.black, 
        fontSize:20,)
        ),
        subtitle: Text('+233 59 86 48 659', style:TextStyle(
          color: Colors.black,fontSize: 15,)
          ),
          trailing: Padding(
            padding: EdgeInsets.only(top:20),
            child: Icon(Icons.more_horiz),
          ),
      ),
      Divider(thickness: 2,height: 0,),
      ListTile(
        leading: Padding(
          padding: EdgeInsets.only(top:10),
          child: CircleAvatar(backgroundImage:
           NetworkImage('https://images.unsplash.com/photo-1639569349218-84a565067623?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
          radius: 30,
          ),
        ),
        title: Text('Evelyn',style: TextStyle(
          color: Colors.black, 
        fontSize:20,)
        ),
        subtitle: Text('+233 54 35 48 729', style:TextStyle(
          color: Colors.black,fontSize: 15,)
          ),
          trailing: Padding(
            padding: EdgeInsets.only(top:20),
            child: Icon(Icons.more_horiz),
          ),
      ),
      Divider(thickness: 2,height: 0,),
      Padding(
        padding: EdgeInsets.only(top:0, right:90,left: 20),
        child: Text("Contacts", style: TextStyle(color: Color.fromRGBO( 102, 99, 99, 1),fontSize: 20,)),
      ),
      SizedBox(height: 15,),
      CallWidget(
        name: 'Bojo',
        number:'+233 50 72 48 753',
        picture:("https://images.unsplash.com/photo-1631199138743-7aca5b32538a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60" ),
      ),
         Divider(thickness: 2,height: 0,),
      CallWidget(
        name: 'Bernice',
        number: '+233 20 45 67 890',
        picture: 'https://images.unsplash.com/photo-1639748530424-9f06a93220ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=60'
      ),
         Divider(thickness: 2,height: 0,),
      CallWidget(
        name: 'Daniel',
        number: '+61 491 570 156',
        picture: 'https://images.unsplash.com/photo-1639752567895-656101fd55c3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNHx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=60'
      ),
         Divider(thickness: 2,height: 0,),
      CallWidget(
        name: 'Mike',
        number: '+61 480 409 8665',
        picture: 'https://images.unsplash.com/photo-1639819253484-f6082608890a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMXx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=60',
      ),
      Divider(thickness: 2,height: 0,),
     ],
   ),
   floatingActionButton: FloatingActionButton(onPressed: () {}, 
   child: const Icon(Icons.add, color: Colors.white,) ),
    );
  }
}

class CallWidget extends StatelessWidget {
  const CallWidget({
    Key? key, required this.name, required this.number, required this.picture,
  }) : super(key: key);
  final String name;
  final String number;
  final String picture;

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top:10),
        child: CircleAvatar(
          backgroundImage:
         NetworkImage(picture),
        radius: 30,
        ),
      ),
      title: Text(name,style: const TextStyle(
        color: Colors.black, 
      fontSize:20,)
      ),
      subtitle:  Text(number, style: const TextStyle(
        color: Colors.black,fontSize: 15,)
        ),
        trailing: const Padding(
          padding: EdgeInsets.only(top:20),
          child: Icon(Icons.more_horiz),
        ),
    );
  }
}