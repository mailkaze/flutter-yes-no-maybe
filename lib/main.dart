import 'package:flutter/material.dart';

import 'package:yes_no_maybe/config/theme/app_theme.dart';
import 'package:yes_no_maybe/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yes No App',
        theme: AppTheme(selectedColor: 0).theme(),
        home: const ChatScreen());
  }
}
