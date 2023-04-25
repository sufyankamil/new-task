// this file has all the tasks list in the column with cards in it and the cards in the column

import 'package:flutter/material.dart';
import 'package:task_screens/common/constants.dart';

import '../common/chat.dart';

class TaskDetails extends StatefulWidget {
  const TaskDetails({Key? key}) : super(key: key);

  // route name for the task details form
  static const String routeName = '/task-detals';

  @override
  State<TaskDetails> createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails> {
  bool isChatPresent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(Constants.release),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(Constants.board),
              ),
            ],
          ),
          const SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(
                verticalDirection: VerticalDirection.down,
                spacing: 10,
                children: [
                  _buildReviewColumn('Review'),
                  _buildShippedColumn('Shipped'),
                  _buildClosedColumn('Closed'),
                  if (isChatPresent) SizedBox(child: _chatMessage()) else const SizedBox(),
                ],

              ),
              // if (isChatPresent) Wrap(
              //   children:  [
              //     _chatMessage()
              //   ],
              // ) else const SizedBox(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildReviewColumn(String column) {
    return Column(
      children: [
        Card(
          elevation: 4, // sets the elevation of the card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                8.0), // sets the rounded corners of the card
          ),
          child: Container(
            padding: const EdgeInsets.all(
                16.0), // sets the padding of the card content
            width: 300.0, // sets the width of the card
            height: MediaQuery.of(context).size.height /
                10, // sets the height of the card
            child: Row(
              children: [
                Text(
                  column,
                  style: const TextStyle(
                    fontSize: 18.0, // sets the font size of the text
                  ),
                ),
                const Spacer(),
                const Icon(Icons.add),
              ],
            ),
          ),
        ),
        // cards which have all the tasks for the one which is under review section
        Card(
          elevation: 4, // sets the elevation of the card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                8.0), // sets the rounded corners of the card
          ),
          child: Container(
            padding: const EdgeInsets.all(
                16.0), // sets the padding of the card content
            width: 300.0, // sets the width of the card
            height: MediaQuery.of(context).size.height /
                6.5, // sets the height of the card
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  Constants.releaseCard,
                  style: TextStyle(
                    fontSize: 14.0, // sets the font size of the text
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  Constants.reviewCardContent,
                  style: TextStyle(
                    fontSize: 18.0, // sets the font size of the text
                  ),
                ),
                SizedBox(height: 10),
                Icon(Icons.flag, color: Colors.yellow),
              ],
            ),
          ),
        ),
        Card(
          elevation: 4, // sets the elevation of the card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                8.0), // sets the rounded corners of the card
          ),
          child: Container(
            padding: const EdgeInsets.all(
                16.0), // sets the padding of the card content
            width: 300.0, // sets the width of the card
            height: MediaQuery.of(context).size.height /
                6.5, // sets the height of the card
            child: GestureDetector(
              onTap: () {
                setState(() {
                  // set isChatPresent to ture and again set it to false when the chat is closed
                  isChatPresent = !isChatPresent;
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    Constants.releaseCard,
                    style: TextStyle(
                        fontSize: 14.0, // sets the font size of the text
                        color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    Constants.reviewCardContent1,
                    style: TextStyle(
                        fontSize: 18.0 // sets the font size of the text
                        ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Text(
                        "3",
                        style: TextStyle(
                            fontSize: 14.0, // sets the font size of the text
                            color: Colors.grey),
                      ),
                      SizedBox(width: 10),
                      // chat bubble icon
                      Icon(Icons.chat_bubble, color: Colors.grey, size: 17),
                      SizedBox(width: 10),
                      Icon(Icons.flag, color: Colors.red),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
          width: 300,
          child: Row(children: const [
            Icon(Icons.add, color: Colors.grey),
            Text(Constants.newTask, style: TextStyle(color: Colors.grey)),
            Spacer(),
          ]),
        ),
      ],
    );
  }

  Widget _buildShippedColumn(String column) {
    return Column(
      children: [
        Card(
          elevation: 4, // sets the elevation of the card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                8.0), // sets the rounded corners of the card
          ),
          child: Container(
            padding: const EdgeInsets.all(
                16.0), // sets the padding of the card content
            width: 300.0, // sets the width of the card
            height: MediaQuery.of(context).size.height /
                10, // sets the height of the card
            child: Row(
              children: [
                Text(
                  column,
                  style: const TextStyle(
                    fontSize: 18.0, // sets the font size of the text
                  ),
                ),
                const Spacer(),
                const Icon(Icons.add),
              ],
            ),
          ),
        ),
        // cards which have all the tasks for the one which is under review section
        Card(
          elevation: 4, // sets the elevation of the card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                8.0), // sets the rounded corners of the card
          ),
          child: Container(
            padding: const EdgeInsets.all(
                16.0), // sets the padding of the card content
            width: 300.0, // sets the width of the card
            height: MediaQuery.of(context).size.height /
                6.5, // sets the height of the card
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  Constants.releaseCard,
                  style: TextStyle(
                    fontSize: 14.0, // sets the font size of the text
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  Constants.shippedCardContent,
                  style: TextStyle(
                    fontSize: 18.0, // sets the font size of the text
                  ),
                ),
                SizedBox(height: 10),
                Icon(Icons.flag, color: Colors.yellow),
              ],
            ),
          ),
        ),
        Card(
          elevation: 4, // sets the elevation of the card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                8.0), // sets the rounded corners of the card
          ),
          child: Container(
            padding: const EdgeInsets.all(
                16.0), // sets the padding of the card content
            width: 300.0, // sets the width of the card
            height: MediaQuery.of(context).size.height /
                6.5, // sets the height of the card
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  Constants.releaseCard,
                  style: TextStyle(
                    fontSize: 14.0, // sets the font size of the text
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  Constants.shippedCardContent1,
                  style: TextStyle(
                    fontSize: 18.0, // sets the font size of the text
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 4, // sets the elevation of the card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                8.0), // sets the rounded corners of the card
          ),
          child: Container(
            padding: const EdgeInsets.all(
                16.0), // sets the padding of the card content
            width: 300.0, // sets the width of the card
            height: MediaQuery.of(context).size.height /
                6.5, // sets the height of the card
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  Constants.releaseCard,
                  style: TextStyle(
                      fontSize: 14.0, // sets the font size of the text
                      color: Colors.grey),
                ),
                const SizedBox(height: 10),
                const Text(
                  Constants.shippedCardContent2,
                  style:
                      TextStyle(fontSize: 18.0 // sets the font size of the text
                          ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text(
                      "3",
                      style: TextStyle(
                          fontSize: 14.0, // sets the font size of the text
                          color: Colors.grey),
                    ),
                    SizedBox(width: 10),
                    // chat bubble icon
                    Icon(Icons.chat_bubble, color: Colors.grey, size: 17),
                    SizedBox(width: 10),
                    Icon(Icons.flag, color: Colors.green),
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 4, // sets the elevation of the card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                8.0), // sets the rounded corners of the card
          ),
          child: Container(
            padding: const EdgeInsets.all(
                16.0), // sets the padding of the card content
            width: 300.0, // sets the width of the card
            height: MediaQuery.of(context).size.height /
                6.5, // sets the height of the card
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  Constants.releaseCard,
                  style: TextStyle(
                    fontSize: 14.0, // sets the font size of the text
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  Constants.shippedCardContent3,
                  style: TextStyle(
                    fontSize: 18.0, // sets the font size of the text
                  ),
                ),
                SizedBox(height: 10),
                Icon(Icons.flag, color: Colors.yellow),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 50,
          width: 300,
          child: Row(children: const [
            Icon(Icons.add, color: Colors.grey),
            Text(Constants.newTask, style: TextStyle(color: Colors.grey)),
            Spacer(),
          ]),
        ),
      ],
    );
  }

  Widget _buildClosedColumn(String column) {
    return Column(
      children: [
        Card(
          elevation: 4, // sets the elevation of the card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                8.0), // sets the rounded corners of the card
          ),
          child: Container(
            padding: const EdgeInsets.all(
                16.0), // sets the padding of the card content
            width: 300.0, // sets the width of the card
            height: MediaQuery.of(context).size.height /
                10, // sets the height of the card
            child: Row(
              children: [
                Text(
                  column,
                  style: const TextStyle(
                    fontSize: 18.0, // sets the font size of the text
                  ),
                ),
                const Spacer(),
                const Icon(Icons.add),
              ],
            ),
          ),
        ),
        // cards which have all the tasks for the one which is under review section
        Card(
          elevation: 4, // sets the elevation of the card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                8.0), // sets the rounded corners of the card
          ),
          child: Container(
            padding: const EdgeInsets.all(
                16.0), // sets the padding of the card content
            width: 300.0, // sets the width of the card
            height: MediaQuery.of(context).size.height /
                6.5, // sets the height of the card
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  Constants.releaseCard,
                  style: TextStyle(
                    fontSize: 14.0, // sets the font size of the text
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  Constants.closedCardContent,
                  style: TextStyle(
                    fontSize: 18.0, // sets the font size of the text
                  ),
                ),
                SizedBox(height: 10),
                Icon(Icons.flag, color: Colors.red),
              ],
            ),
          ),
        ),
        Card(
          elevation: 4, // sets the elevation of the card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                8.0), // sets the rounded corners of the card
          ),
          child: Container(
            padding: const EdgeInsets.all(
                16.0), // sets the padding of the card content
            width: 300.0, // sets the width of the card
            height: MediaQuery.of(context).size.height /
                6.5, // sets the height of the card
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  Constants.releaseCard,
                  style: TextStyle(
                      fontSize: 14.0, // sets the font size of the text
                      color: Colors.grey),
                ),
                const SizedBox(height: 10),
                const Text(
                  Constants.closedCardContent1,
                  style:
                      TextStyle(fontSize: 18.0 // sets the font size of the text
                          ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text(
                      "+4",
                      style: TextStyle(
                          fontSize: 14.0, // sets the font size of the text
                          color: Colors.grey),
                    ),
                    // icon for tag and pin
                    Icon(Icons.tag, color: Colors.grey, size: 17),
                    SizedBox(width: 10),
                    Text(
                      "+5",
                      style: TextStyle(
                          fontSize: 14.0, // sets the font size of the text
                          color: Colors.grey),
                    ),
                    Icon(Icons.attach_file, color: Colors.grey, size: 17),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _chatMessage() {
    return Container(
      height: 600,
      width: 400,
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Row(
            children:  [
              // back icon for the chat screen to hide
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  setState(() {
                    isChatPresent = false;
                  });
                },
              ),
              const SizedBox(width: 10),
              const Text(
                'Chat',
                style: TextStyle(
                  fontSize: 18.0, // sets the font size of the text
                ),
              ),
              const Spacer(),
              // cross icon for the chat screen to hide
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  setState(() {
                    isChatPresent = false;
                  });
                },
              ),
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                // circular avatar
                CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/self.png')),
                SizedBox(width: 10),
                Text(
                  'Jason',
                  style: TextStyle(
                    fontSize: 18.0, // sets the font size of the text
                  ),
                ),
                Spacer(),
                Icon(Icons.call, color: Colors.grey),
                SizedBox(width: 10),
                Icon(Icons.videocam, color: Colors.grey),
              ]),
          const SizedBox(height: 10),
          const Divider(),
          ChatMessage(
            id: 'chat-message',
            content: Text(
              'Hi Jason! How are you?',
              style: TextStyle(color: Colors.black),
            ),
            received: true,
            chatBubbleColor: Colors.white,
          ),
          ChatMessage(
            id: 'chat-message',
            content: Text(
              'I`m good, how about you?',
              style: TextStyle(color: Colors.white),
            ),
            received: false,
            chatBubbleColor: Colors.purple,
          ),
          ChatMessage(
            id: 'chat-message',
            content: Text(
              'How is the work going?',
              style: TextStyle(color: Colors.black),
            ),
            received: true,
            chatBubbleColor: Colors.white,
          ),
          ChatMessage(
            id: 'chat-message',
            content: Text(
              'I`ve just checked done 5 tasks.',
              style: TextStyle(color: Colors.white),
            ),
            received: false,
            chatBubbleColor: Colors.purple,
          ),
          ChatMessage(
            id: 'chat-message',
            content: Text(
              'Great! Keep it up!',
              style: TextStyle(color: Colors.black),
            ),
            received: true,
            chatBubbleColor: Colors.white,
          ),
          ChatMessage(
            id: 'chat-message',
            content: Text(
              'Thanks!',
              style: TextStyle(color: Colors.white),
            ),
            received: false,
            chatBubbleColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}
