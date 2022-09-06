// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class UserModel {
  @required
  final String? name;
  @required
  final int? id;
  @required
  final int? phone;

  UserModel({this.name, this.id, this.phone});
}

class Users extends StatelessWidget {
  List<UserModel> user = [
    UserModel(id: 1, phone: 200990909090, name: 'zahra'),
    UserModel(id: 2, phone: 9887346747, name: 'menna'),
    UserModel(id: 3, phone: 209636765736, name: 'ali'),
    UserModel(id: 4, phone: 200990909090, name: 'zahra'),
    UserModel(id: 5, phone: 9887346747, name: 'menna'),
    UserModel(id: 6, phone: 209636765736, name: 'ali'),
    UserModel(id: 7, phone: 200990909090, name: 'zahra'),
    UserModel(id: 8, phone: 9887346747, name: 'menna'),
    UserModel(id: 9, phone: 209636765736, name: 'ali'),
    UserModel(id: 10, phone: 200990909090, name: 'zahra'),
    UserModel(id: 11, phone: 9887346747, name: 'menna'),
    UserModel(id: 12, phone: 209636765736, name: 'ali'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Users'),
          backgroundColor: Color.fromARGB(255, 182, 0, 39),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => users(user[index]),
            separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsetsDirectional.only(start: 25),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
            itemCount: user.length));
  }

  Widget users(UserModel user) => Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: Color.fromARGB(255, 187, 31, 65),
              child: Text(
                '${user.id}',
                style:
                    TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${user.name}',
                ),
                SizedBox(
                  height: 10,
                ),
                Text('${user.phone}'),
              ],
            )
          ],
        ),
      );
}
