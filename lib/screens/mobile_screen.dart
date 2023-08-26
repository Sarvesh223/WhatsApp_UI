import 'package:flutter/material.dart';
import 'package:whatsapp/colrs.dart';
import 'package:whatsapp/information.dart';
import 'package:whatsapp/widgets/contact_list.dart';
import 'package:whatsapp/widgets/status.dart';

class mobilescreeen extends StatefulWidget {
  const mobilescreeen({
    Key? key,
  }) : super(key: key);

  @override
  State<mobilescreeen> createState() => _mobilescreeenState();
}

class _mobilescreeenState extends State<mobilescreeen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 0,
        title: const Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {
              _showMoreOptionsDialog(context);
            },
            icon: const Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: tabColor,
          indicatorWeight: 4,
          labelColor: tabColor,
          unselectedLabelColor: Colors.grey,
          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
          tabs: [
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Contactlist(), // CHATS content
          StatusTab(), // STATUS content
          CallsTab(), // CALLS content
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: tabColor,
        child: const Icon(
          Icons.comment,
          color: Colors.white,
        ),
      ),
    );
  }

  void _showMoreOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Align(
          alignment: Alignment.topRight,
          child: AlertDialog(
            iconColor: appBarColor,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: const Text("New group"),
                  onTap: () {
                    Navigator.pop(context); // Close the dialog
                  },
                ),
                ListTile(
                  title: const Text("New broadcast"),
                  onTap: () {
                    Navigator.pop(context); // Close the dialog
                  },
                ),
                ListTile(
                  title: const Text("Linked devices"),
                  onTap: () {
                    Navigator.pop(context); // Close the dialog
                  },
                ),
                ListTile(
                  title: const Text("Starred messages"),
                  onTap: () {
                    Navigator.pop(context); // Close the dialog
                  },
                ),
                ListTile(
                  title: const Text("Payments"),
                  onTap: () {
                    Navigator.pop(context); // Close the dialog
                  },
                ),
                ListTile(
                  title: const Text("Settings"),
                  onTap: () {
                    Navigator.pop(context); // Close the dialog
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CallsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      title: Text(
                        info[index]['name'].toString(),
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text(
                          "5 minutes ago",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              info[index]['profilePic'].toString())),
                      trailing: const Icon(
                        Icons.phone,
                        color: tabColor,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: mobilescreeen(),
  ));
}
