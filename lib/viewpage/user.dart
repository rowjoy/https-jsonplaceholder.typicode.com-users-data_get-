// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, avoid_print

import 'package:api_provider_user_data/providersection/usercontroller.dart';
import 'package:api_provider_user_data/viewpage/deatils.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Userpage extends StatefulWidget {
  const Userpage({Key? key}) : super(key: key);

  @override
  _UserpageState createState() => _UserpageState();
}

class _UserpageState extends State<Userpage> {
  @override
  Widget build(BuildContext context) {
    context.read<Userdata>().getdata;
    return Scaffold(
      appBar: AppBar(
        title: Text('User info'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<Userdata>().getdata;
        },
        child: SafeArea(
          child: Container(child: Consumer<Userdata>(
            builder: (context, value, child) {
              return value.datalist.isEmpty && !value.error
                  ? Center(child: CircularProgressIndicator())
                  : value.error
                      ? Text('Opp? 404 ${value.errormasses}')
                      : ListView.builder(
                          shrinkWrap: true,
                          itemCount: value.datalist.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                onTap: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                tileColor: Colors.blueAccent,
                                leading: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Icon(Icons.person),
                                  ),
                                ),
                                title: Text(
                                  value.datalist[index]['name'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                subtitle: Text(
                                  value.datalist[index]['email'],
                                  style: TextStyle(
                                    color: Colors.white70,
                                  ),
                                ),
                                trailing: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Deatilespage()));
                                    },
                                    icon: Icon(
                                      Icons.view_agenda,
                                      color: Colors.white,
                                    )),
                              ),
                            );
                          });
            },
          )),
        ),
      ),
    );
  }
}
