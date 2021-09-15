import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  final String img;
  final bool status;
  final bool online;

  const ContactWidget(this.status, {Key key, this.img,@required this.online,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all( 12),
      child: Stack(
        children: <Widget>[

          Container(
            decoration: BoxDecoration(
                color: Colors.black,
            borderRadius: BorderRadius.circular(30),
              border: status? Border.all(color: Colors.pinkAccent, width: 3) : Border.all(color: Colors.black87, width: 3),
            ),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey[300],
              backgroundImage: AssetImage("images/$img"),
            ),
          ),

          Positioned(
              bottom: 0,
              right: 7,
              child: Visibility(
                visible: online,
                child: Container(
            height: 10, width: 10,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(20),
                  color: Colors.blue
            ),
          ),
              )),

        ],
      ),
    );
  }
}
