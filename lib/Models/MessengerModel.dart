import 'package:flutter/cupertino.dart';

class MessengerModel{

  MessengerModel({
    @required this.username,
    @required this.lastMessage,
    @required this.userProfilePicture,
  });

  String username;
  String lastMessage;
  String userProfilePicture;
}