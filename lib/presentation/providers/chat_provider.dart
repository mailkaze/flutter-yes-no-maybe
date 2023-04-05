import 'package:flutter/material.dart';
import 'package:yes_no_maybe/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'hola caracola', fromWho: FromWho.me),
    Message(text: 'ya volviste del trabajo?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    //  TODO: implementar metodo
  }
}
