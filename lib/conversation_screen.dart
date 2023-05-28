import 'package:flutter/material.dart';

class ConversationScreen extends StatefulWidget {
  final String messageTitle;
  final String messageBody;
  const ConversationScreen(
      {super.key, required this.messageTitle, required this.messageBody});

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.messageTitle,
        ),
      ),
      body: ListView(
        children: [
          Text(
            widget.messageBody,
          )
        ],
      ),
    );
  }
}
