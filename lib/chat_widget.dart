import 'package:cr4_lesson_7/conversation_screen.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatefulWidget {
  final String messageTitle;
  final String messageBody;

  const ChatWidget(
      {super.key, required this.messageTitle, required this.messageBody});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ConversationScreen(
              messageTitle: widget.messageTitle,
              messageBody: widget.messageBody,
            ),
          ),
        );
      },
      child: Row(
        children: [
          Image.network(
            'https://picsum.photos/id/1/200/300',
            height: 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.messageTitle,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(widget.messageBody),
            ],
          ),
          Text('11:15 PM')
        ],
      ),
    );
  }
}
