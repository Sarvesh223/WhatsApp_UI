# whatsapp

Hey everyone! In this project I'm creating UI of WhatsApp using Flutter. Its overall a best project I have created so far. Hope you all find it useful.
This project has two interface one is mobile interface and another one is web interface.

## Getting Started

--This Project has 15 files 

1. main.dart : This dart file caaling the layout file and also the mobile screen and web screen file.
2. information.dart: This file contain all the contact information and message information that we want to display in our WhstApp UI.     They are in the form of array
3. colrs.dart: This file contain all the necessary colors schemea.

## now the widget folder
1. 
2. centermessa.dart: This file creates a sender message box with calling of infomation file data.
3. chat_list.dart: This file calls the sender and reciever message to the mobile_chat file if "isMe" indication is true.
4. contact_list.dart: This file creates a structure of a contact list that we want to display on our "CHATS" tab, this file is calling the information from information.dart file(fetching the value using index.)
5. mymessage.dart: This file creates the structure of my message box that will display on mobile chat window. 
6. status.dart: This file display the status window of whatsapp.
7. web_bar.chat: This file is similar to app bar, it will show you the you. and also has some icons.
8. web_chat_bar.dart: : This file creates the chat bar.
9. web_serach.dart: This file creates the top search bar of the whatsapp ui.

## now the screens folder
1. mobile_screen.dart: This file creates the mobile window for whatsapp and how it will appear to user / person. Main window of the UI.
2. mobile_chat.dart: This file creates the structure of the inside chat window. It has text field and necessary icons.
3. web_screen.dart: This file creates the web window of our UI.

# now responsive folder
1. responsive_layout.dart: This file basically runs when our window exceeds 900 width. This file automatically calls the web screen file.


# Special Thanks
Rivavan Ranawat 
