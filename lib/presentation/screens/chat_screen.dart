import 'package:flutter/material.dart';
import 'package:chat_app/presentation/widgets/chat/my_message_buble.dart';
import 'package:chat_app/presentation/widgets/chat/your_message_buble.dart';
import 'package:chat_app/presentation/widgets/shared/message_field_box.dart';

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
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const YourMessageBuble()
                      : const MyMessageBuble();
                },
              ),
            ),
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
