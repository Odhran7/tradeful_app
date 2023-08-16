import 'package:flutter/material.dart';
import 'package:tradeful_app/utils/colors.dart';
import 'package:tradeful_app/widgets/small_text.dart';

import '../../../models/message_model.dart';
import '../../../models/user_model.dart';

class Conversation extends StatelessWidget {
  final User user;
  const Conversation({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mock Data for messages

    final User currentUser =
        User(id: 0, name: 'You', avatar: 'assets/images/Addison.jpg');

    final User addison =
        User(id: 1, name: 'Addison', avatar: 'assets/images/Addison.jpg');

    final User angel =
        User(id: 2, name: 'Angel', avatar: 'assets/images/Angel.jpg');

    final User deanna =
        User(id: 3, name: 'Deanna', avatar: 'assets/images/Deanna.jpg');

    final User jason =
        User(id: 4, name: 'Json', avatar: 'assets/images/Jason.jpg');

    final User judd =
        User(id: 5, name: 'Judd', avatar: 'assets/images/Judd.jpg');

    final User leslie =
        User(id: 6, name: 'Leslie', avatar: 'assets/images/Leslie.jpg');

    final User nathan =
        User(id: 7, name: 'Nathan', avatar: 'assets/images/Nathan.jpg');

    final User stanley =
        User(id: 8, name: 'Stanley', avatar: 'assets/images/Stanley.jpg');

    final User virgil =
        User(id: 9, name: 'Virgil', avatar: 'assets/images/Virgil.jpg');

    final List<Message> recentChats = [
      Message(
        sender: addison,
        avatar: 'assets/images/Addison.jpg',
        time: '01:25',
        text: "typing...",
        unreadCount: 1,
      ),
      Message(
        sender: jason,
        avatar: 'assets/images/Jason.jpg',
        time: '12:46',
        text: "Can we schedule a visit for tomorrow?",
        unreadCount: 1,
      ),
      Message(
        sender: deanna,
        avatar: 'assets/images/Deanna.jpg',
        time: '05:26',
        text: "Received your request. How can I assist?",
        unreadCount: 3,
      ),
      Message(
        sender: nathan,
        avatar: 'assets/images/Nathan.jpg',
        time: '12:45',
        text: "I've sent you a quote. Please check.",
        unreadCount: 2,
      ),
    ];

    final List<Message> allChats = [
      Message(
        sender: virgil,
        avatar: 'assets/images/Virgil.jpg',
        time: '12:59',
        text: "Thanks for the feedback! Will improve next time.",
        unreadCount: 0,
        isRead: true,
      ),
      Message(
        sender: stanley,
        avatar: 'assets/images/Stanley.jpg',
        time: '10:41',
        text: "Do you have any specific requirements?",
        unreadCount: 1,
        isRead: false,
      ),
      Message(
        sender: leslie,
        avatar: 'assets/images/Leslie.jpg',
        time: '05:51',
        text: "I'm available on Tuesday. Does that work?",
        unreadCount: 0,
        isRead: true,
      ),
      Message(
        sender: judd,
        avatar: 'assets/images/Judd.jpg',
        time: '10:16',
        text: "Please confirm the materials you'd like me to use.",
        unreadCount: 2,
        isRead: false,
      ),
    ];

    final List<Message> messages = [
      Message(
        sender: addison,
        time: '12:09 AM',
        avatar: addison.avatar,
        text: "I've completed the task. Let me know if there's anything else.",
      ),
      Message(
        sender: currentUser,
        time: '12:05 AM',
        avatar: 'assets/images/profile_picture.jpeg',
        isRead: true,
        text: "Thank you for the quick response!",
      ),
      Message(
        sender: currentUser,
        avatar: 'assets/images/profile_picture.jpeg',
        time: '12:05 AM',
        isRead: true,
        text: "How much will the additional work cost?",
      ),
      Message(
        sender: addison,
        time: '11:58 PM',
        avatar: addison.avatar,
        text: "I noticed a few more issues while working.",
      ),
      Message(
        sender: addison,
        time: '11:58 PM',
        avatar: addison.avatar,
        text: "I'll be there first thing in the morning.",
      ),
      Message(
        sender: currentUser,
        avatar: 'assets/images/profile_picture.jpeg',
        time: '11:45 PM',
        isRead: true,
        text: "Please ensure the work is done by the weekend.",
      ),
      Message(
        sender: addison,
        time: '11:30 PM',
        avatar: addison.avatar,
        text: "Got your request. I'll start on it right away.",
      ),
    ];

    return ListView.builder(
        reverse: true,
        itemCount: messages.length,
        itemBuilder: (context, int index) {
          final message = messages[index];
          bool isMe = message.sender.id == currentUser.id;
          return Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:
                      isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (!isMe)
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage(user.avatar),
                      ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.6),
                      decoration: BoxDecoration(
                          color: isMe
                              ? AppColors.mainColor
                              : AppColors.buttonColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                            bottomLeft: Radius.circular(isMe ? 12 : 0),
                            bottomRight: Radius.circular(isMe ? 0 : 12),
                          )),
                      child: SmallText(
                        text: messages[index].text,
                        size: 15,
                        color: AppColors.textColor,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment:
                        isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                    children: [
                      if (!isMe)
                        SizedBox(
                          width: 40,
                        ),
                      Icon(
                        Icons.done_all,
                        size: 20,
                        color: AppColors.buttonColor,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      SmallText(
                        text: message.time,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
