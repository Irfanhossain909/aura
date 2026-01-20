import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ChatMessage {
  final String id;
  final String text;
  final DateTime sentAt;
  final bool isSender;

  ChatMessage({
    required this.id,
    required this.text,
    required this.sentAt,
    required this.isSender,
  });
}

class MessageController extends GetxController {
  final RxList<ChatMessage> messages = <ChatMessage>[
    ChatMessage(
      id: '1',
      text: 'Hey loved our chat you seem so fun!',
      sentAt: DateTime.now().subtract(const Duration(minutes: 20)),
      isSender: false,
    ),
    ChatMessage(
      id: '2',
      text: 'You too you gotta you talk again',
      sentAt: DateTime.now().subtract(const Duration(minutes: 10)),
      isSender: true,
    ),
    ChatMessage(
      id: '3',
      text: 'Ahh your so funny',
      sentAt: DateTime.now().subtract(const Duration(minutes: 8)),
      isSender: false,
    ),
  ].obs;

  final TextEditingController inputController = TextEditingController();

  void sendMessage(String text) {
    if (text.trim().isEmpty) return;
    messages.add(
      ChatMessage(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        text: text.trim(),
        sentAt: DateTime.now(),
        isSender: true,
      ),
    );
  }

  @override
  void onClose() {
    inputController.dispose();
    super.onClose();
  }
}
