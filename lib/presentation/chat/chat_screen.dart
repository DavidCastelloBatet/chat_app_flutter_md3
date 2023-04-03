import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://bancosdefotos.com/wp-content/uploads/2020/02/BANCO-DE-IM%C3%81GENES-SIN-COPYRIGHT.jpg'),
          ),
        ),
        title: const Text('Chat 1 '),
      ),
    );
  }
}
