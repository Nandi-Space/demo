import 'package:flutter/material.dart';

class DemoClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Mail(address: 'nepal',subject: 'title',send: (){
                  print('you pressed send');
                },),

                Mail(address: 'nepal',subject: 'title',send: (){
                  print('you pressed send');
                },),
                Mail(address: 'nepal',subject: 'title',send: (){
                  print('you pressed send');
                },),
                Mail(address: 'nepal',subject: 'title',send: (){
                  print('you pressed send');
                },),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Mail extends StatelessWidget {
  final String address;
  final String subject;
  final Function send;

  Mail({this.address, this.subject, this.send});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: send,
        child: Card(
          elevation: 10,
          child: Column(
            children: [
              Text(
                address,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Divider(),
              Text(
                subject,
                style: TextStyle(color: Colors.grey[550], fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
