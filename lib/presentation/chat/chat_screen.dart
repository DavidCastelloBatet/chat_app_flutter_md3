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
                  return Text('Hola indice ${index + 1}');
                },
              ),
            ),
            const Text('hola 2'),
          ],
        ),
      ),
    );
  }
}
