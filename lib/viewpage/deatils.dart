// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Deatilespage extends StatefulWidget {
  final String? name;
  final String? username;
  final String? email;
  final String? address;
  final String? city;
  final String? phone;
  final String? website;
  final String? company;
  const Deatilespage(
      {Key? key,
      this.name,
      this.username,
      this.address,
      this.city,
      this.company,
      this.email,
      this.phone,
      this.website})
      : super(key: key);

  @override
  _DeatilespageState createState() => _DeatilespageState();
}

class _DeatilespageState extends State<Deatilespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Card(
            color: Colors.blueAccent.withOpacity(0.5),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Container(
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Container(
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.arrow_back)),
                          ),
                          SizedBox(
                            width: 85,
                          ),
                          CircleAvatar(
                            radius: 50,
                            child: Center(
                              child: Icon(
                                Icons.person,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text('${widget.name}'),
                    Text('${widget.email}'),
                    Text('${widget.address}'),
                    Text('${widget.phone}'),
                    Text('${widget.city}'),
                    Text('${widget.company}'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
