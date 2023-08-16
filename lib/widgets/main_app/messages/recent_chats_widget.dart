import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tradeful_app/pages/app/homeowner/messaging/homeowner_messaging_room_page.dart';
import '../../../models/message_model.dart';
import '../../../models/user_model.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mock Data for messages

    final User currentUser =
        User(id: 0, name: 'You', avatar: 'assets/images/profile_icon.jpeg');

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
        text: "Will I be in it?",
        unreadCount: 1,
      ),
      Message(
        sender: deanna,
        avatar: 'assets/images/Deanna.jpg',
        time: '05:26',
        text: "That's so cute.",
        unreadCount: 3,
      ),
      Message(
          sender: nathan,
          avatar: 'assets/images/Nathan.jpg',
          time: '12:45',
          text: "Let me see what I can do.",
          unreadCount: 2),
    ];

    final List<Message> allChats = [
      Message(
        sender: virgil,
        avatar: 'assets/images/Virgil.jpg',
        time: '12:59',
        text: "No! I just wanted",
        unreadCount: 0,
        isRead: true,
      ),
      Message(
        sender: stanley,
        avatar: 'assets/images/Stanley.jpg',
        time: '10:41',
        text: "You did what?",
        unreadCount: 1,
        isRead: false,
      ),
      Message(
        sender: leslie,
        avatar: 'assets/images/Leslie.jpg',
        time: '05:51',
        unreadCount: 0,
        isRead: true,
        text: "just signed up for a tutor",
      ),
      Message(
        sender: judd,
        avatar: 'assets/images/Judd.jpg',
        time: '10:16',
        text: "May I ask you something?",
        unreadCount: 2,
        isRead: false,
      ),
    ];

    final List<Message> messages = [
      Message(
        sender: addison,
        time: '12:09 AM',
        avatar: addison.avatar,
        text: "...",
      ),
      Message(
        sender: currentUser,
        time: '12:05 AM',
        avatar: 'assets/images/profile_picture.jpeg',
        isRead: true,
        text: "I’m going home.",
      ),
      Message(
        sender: currentUser,
        avatar: 'assets/images/profile_picture.jpeg',
        time: '12:05 AM',
        isRead: true,
        text: "See, I was right, this doesn’t interest me.",
      ),
      Message(
        sender: addison,
        time: '11:58 PM',
        avatar: addison.avatar,
        text: "I sign your paychecks.",
      ),
      Message(
        sender: addison,
        time: '11:58 PM',
        avatar: addison.avatar,
        text: "You think we have nothing to talk about?",
      ),
      Message(
        sender: currentUser,
        avatar: 'assets/images/profile_picture.jpeg',
        time: '11:45 PM',
        isRead: true,
        text:
            "Well, because I had no intention of being in your office. 20 minutes ago",
      ),
      Message(
        sender: addison,
        time: '11:30 PM',
        avatar: addison.avatar,
        text: "I was expecting you in my office 20 minutes ago.",
      ),
    ];

    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 30),
          child: Row(
            children: [
              Text(
                'Recent Chats',
              ),
              Spacer(),
              Icon(Icons.search, color: Colors.blue)
            ],
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: recentChats.length,
            itemBuilder: (context, int index) {
              final recentChat = recentChats[index];
              return Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(recentChat.avatar),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => ChatRoom(user: currentUser));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              recentChat.sender.name,
                            ),
                            Text(
                              recentChat.text,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            radius: 8,
                            // backgorund color
                            child: Text(
                              recentChat.unreadCount.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            recentChat.time,
                          )
                        ],
                      ),
                    ],
                  ));
            })
      ],
    );
  }
}
