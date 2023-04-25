import 'dart:ffi';

import 'package:flutter/material.dart';

import '../common/chat.dart';

class ChatScreen extends StatefulWidget {
  bool isReview = false;
  bool isShipped = false;
  bool isClosed = false;

  ChatScreen(
      {required this.isReview,
      required this.isShipped,
      required this.isClosed});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const ChatMessage(
          id: 'chat-message',
          content: Text(
            'Hi Jason! How are you?',
            style: TextStyle(color: Colors.black),
          ),
          received: true,
          chatBubbleColor: Colors.white,
        ),
        const ChatMessage(
          id: 'chat-message',
          content: Text(
            'I`m good, how about you?',
            style: TextStyle(color: Colors.white),
          ),
          received: false,
          chatBubbleColor: Colors.purple,
        ),
        const ChatMessage(
          id: 'chat-message',
          content: Text(
            'How is the work going?',
            style: TextStyle(color: Colors.black),
          ),
          received: true,
          chatBubbleColor: Colors.white,
        ),

        widget.isClosed
            ? const ChatMessage(
                id: 'chat-message',
                content: Text(
                  'I`ve just closed the project.',
                  style: TextStyle(color: Colors.white),
                ),
                received: false,
                chatBubbleColor: Colors.purple,
              )
            : widget.isShipped
                ? const ChatMessage(
                    id: 'chat-message',
                    content: Text(
                      'I`ve just shipped the project.',
                      style: TextStyle(color: Colors.white),
                    ),
                    received: false,
                    chatBubbleColor: Colors.purple,
                  )
                : widget.isReview
                    ? const ChatMessage(
                        id: 'chat-message',
                        content: Text(
                          'I`ve just reviewed the project.',
                          style: TextStyle(color: Colors.white),
                        ),
                        received: false,
                        chatBubbleColor: Colors.purple,
                      )
                    : const SizedBox(),
        // ChatMessage(
        //   id: 'chat-message',
        //   content: widget.isReview
        //       ? Text(
        //           'I`ve just reviewed the project.',
        //           style: TextStyle(color: Colors.white),
        //         )
        //       : widget.isShipped
        //           ? Text(
        //               'I`ve just shipped the project.',
        //               style: TextStyle(color: Colors.white),
        //             )
        //           : widget.isClosed
        //               ? Text(
        //                   'I`ve just closed the project.',
        //                   style: TextStyle(color: Colors.white),
        //                 )
        //               : Text(
        //                   'I`ve just reviewed the project.',
        //                   style: TextStyle(color: Colors.white),
        //                 ),
        //   received: false,
        //   chatBubbleColor: Colors.purple,
        // ),
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
    ));
  }
}
