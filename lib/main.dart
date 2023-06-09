import 'package:flutter/material.dart';
import 'package:chat_app/config/theme/app_theme.dart';
import 'package:chat_app/presentation/screens/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).theme(),
      title: 'Chat App',
      home: const ChatScreen(),
    );
  }
}
