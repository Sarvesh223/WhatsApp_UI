import 'package:flutter/material.dart';
import 'package:whatsapp/colrs.dart';

class webbar extends StatelessWidget {
  const webbar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(
              right: BorderSide(
            color: dividerColor,
          )),
          color: webAppBarColor),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
          ),
          radius: 20,
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.circle_outlined,
                  color: Colors.grey,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.comment,
                  color: Colors.grey,
                )),
            IconButton(
                onPressed: () {
                  _showMoreOptionsDialog(context);
                },
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ))
          ],
        ),
      ]),
    );
  }
}

void _showMoreOptionsDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Align(
          alignment: Alignment.topRight,
          child: AlertDialog(
            backgroundColor: chatBarMessage,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: const Text("New group"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text("New Broadcast"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text("Linked Device"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text("Starred Messages"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text("Payments"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text("Settings"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      });
}
