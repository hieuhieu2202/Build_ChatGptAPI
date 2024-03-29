import 'package:build_chatgpt_app/constants/constants.dart';
import 'package:build_chatgpt_app/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:build_chatgpt_app/services/assets_manager.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key, required this.chatIndex, required this.msg});

  final String msg;
  final int chatIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: chatIndex == 0 ? scaffoldBackgroundColor : cardColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  chatIndex == 0
                      ? AssetsManager.userImage
                      : AssetsManager.botImage,
                  height: 30,
                  width: 30,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                    child: TextWidget(
                        lable: msg,
                    )
                ),
                chatIndex == 0 ? const SizedBox.shrink() : const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.thumb_up_alt_outlined, color: Colors.white,),
                    SizedBox(width: 5,),
                    Icon(Icons.thumb_down_alt_outlined, color: Colors.white,),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
