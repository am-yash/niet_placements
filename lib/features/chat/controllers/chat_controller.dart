import 'package:get/get.dart';
import 'package:niet_placements/features/chat/models/chat_model.dart';

class ChatController extends GetxController {
  var messages = <Message>[].obs;

  void sendMessage(String senderId, String text) {
    final newMessage =
        Message(senderId: senderId, text: text, time: DateTime.now());
    messages.add(newMessage);
  }
}
