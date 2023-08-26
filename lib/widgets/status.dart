import 'package:flutter/material.dart';
import 'package:whatsapp/colrs.dart';

class StatusTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 75),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: mobileChatBoxColor,
          child: const Icon(
            Icons.edit,
            color: Colors.white,
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.only(left: 20, top: 10),
          child: Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
                  ),
                  radius: 25,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 80),
                      child: Text(
                        "My status ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 200)),
                    Text(
                      "Tap to add status update",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
