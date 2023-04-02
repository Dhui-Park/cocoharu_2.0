import 'package:cocoharu_second/constants/gaps.dart';
import 'package:cocoharu_second/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({super.key});

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          horizontalTitleGap: Sizes.size8,
          leading: Stack(
            children: [
              const Positioned(
                child: CircleAvatar(
                  radius: Sizes.size24,
                  foregroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/67443044?v=4"),
                  child: Text("Dhui"),
                ),
              ),
              Positioned(
                top: 35,
                left: 35,
                child: Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2.8,
                    ),
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(Sizes.size10),
                  ),
                ),
              ),
            ],
          ),
          title: const Text(
            "Dhui",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: const Text("Active now"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              FaIcon(
                FontAwesomeIcons.flag,
                color: Colors.black,
                size: Sizes.size20,
              ),
              Gaps.h32,
              FaIcon(
                FontAwesomeIcons.ellipsis,
                color: Colors.black,
                size: Sizes.size20,
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView.separated(
            padding: const EdgeInsets.symmetric(
              vertical: Sizes.size20,
              horizontal: Sizes.size14,
            ),
            itemBuilder: (context, index) {
              final isMine = index % 2 == 0;
              return Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment:
                    isMine ? MainAxisAlignment.end : MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(Sizes.size14),
                    decoration: BoxDecoration(
                      color:
                          isMine ? Colors.blue : Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(Sizes.size20),
                        topRight: const Radius.circular(Sizes.size20),
                        bottomLeft: Radius.circular(
                            isMine ? Sizes.size20 : Sizes.size5),
                        bottomRight: Radius.circular(
                            !isMine ? Sizes.size20 : Sizes.size5),
                      ),
                    ),
                    child: const Text(
                      "This is a message!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Sizes.size16,
                      ),
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) => Gaps.v10,
            itemCount: 10,
          ),
          Positioned(
            bottom: 0,
            width: MediaQuery.of(context).size.width,
            child: BottomAppBar(
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.size20,
              ),
              color: Colors.grey.shade50,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: TextField(
                      style: const TextStyle(
                        fontSize: Sizes.size20,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Sizes.size12),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                      ),
                      minLines: null,
                      maxLines: null,
                      cursorColor: Theme.of(context).primaryColor,
                    ),
                  ),
                  Gaps.h20,
                  Container(
                    child: const FaIcon(FontAwesomeIcons.paperPlane),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
