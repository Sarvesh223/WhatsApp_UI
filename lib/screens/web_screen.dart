import 'package:flutter/material.dart';
import 'package:whatsapp/colrs.dart';
import 'package:whatsapp/widgets/contact_list.dart';
import 'package:whatsapp/widgets/web_bar.dart';
import 'package:whatsapp/widgets/web_chat_bar.dart';
import 'package:whatsapp/widgets/web_search.dart';
import 'package:whatsapp/widgets/chat_list.dart';

class Webscreeen extends StatelessWidget {
  const Webscreeen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                webbar(),
                Websearch(),
                Contactlist(),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/backgroundImage.png'),
            fit: BoxFit.cover,
          )),
          child: Column(children: [
            Webchat(),
            Expanded(
              child: Chatlist(),
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.04,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: dividerColor,
                  ),
                ),
                color: chatBarMessage,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.emoji_emotions_outlined),
                    color: Colors.grey,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.attach_file),
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 15,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: searchBarColor,
                          filled: true,
                          hintText: "Type a message",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                width: 0, style: BorderStyle.none),
                          ),
                          contentPadding: const EdgeInsets.only(left: 20),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.mic),
                    color: Colors.grey,
                  ),
                ],
              ),
            )
          ]),
        )
      ],
    ));
  }
}
