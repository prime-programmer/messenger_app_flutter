import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  final String image;
  final String name;
  final String msg;
  final bool isRead;

  const Chats({Key key, this.image, this.name, this.msg, this.isRead}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage("images/$image"),
      ),


      title: Text(name, style: TextStyle(color: Colors.white),),
      subtitle: Text(msg, style: TextStyle(color: Colors.grey),),
      trailing: Container(
        height: 10, width: 10,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1.5),
            borderRadius: BorderRadius.circular(20),
            color: isRead? Colors.black : Colors.red
        ),
      ),
    );
  }
}
