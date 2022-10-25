import 'package:flutter/material.dart';

class romany {
  final int id;
  final String name;
  final String phone;

  romany({required this.id, required this.name, required this.phone});
}

class user2 extends StatelessWidget {
  List<romany> Rom = [
    romany(id: 1, name: 'romany', phone: '01212309878'),
    romany(id: 2, name: 'nourhan', phone: '01212309878'),
    romany(id: 3, name: 'sooo', phone: '01212309878'),
    romany(id: 4, name: 'goo', phone: '01212309878'),
    romany(id: 5, name: 'demo', phone: '01212309878'),
    romany(id: 6, name: 'tata', phone: '01212309878'),
    romany(id: 1, name: 'romany', phone: '01212309878'),
    romany(id: 2, name: 'nourhan', phone: '01212309878'),
    romany(id: 3, name: 'sooo', phone: '01212309878'),
    romany(id: 4, name: 'goo', phone: '01212309878'),
    romany(id: 5, name: 'demo', phone: '01212309878'),
    romany(id: 6, name: 'tata', phone: '01212309878'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'chaaat',
          style: TextStyle(fontSize: 20.0, color: Colors.amber),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => Buildlist(Rom[index]),
          separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 2.00,
                  color: Colors.pink,
                ),
              ),
          itemCount: Rom.length),
    );
  }

  Widget Buildlist(romany romany1) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30.00,
              backgroundColor: Colors.blue,
              child: Text(
                '${romany1.id}',
                style: TextStyle(fontSize: 30.00, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 10.00,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${romany1.name}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '${romany1.phone}',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      );
}
