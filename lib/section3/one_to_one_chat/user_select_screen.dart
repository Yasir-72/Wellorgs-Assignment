import 'package:flutter/material.dart';
import 'package:wellorgs_assignment/section3/one_to_one_chat/chatroom.dart';

class UserSelectScreen extends StatelessWidget {
  const UserSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select User')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>  ChatScreen(
                      currentUserID: 'userA',
                      chatPartnerID: 'userB',
                    ),
                  ),
                );
              },
              child: const Text('Login as userA'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>  ChatScreen(
                      currentUserID: 'userB',
                      chatPartnerID: 'userA',
                    ),
                  ),
                );
              },
              child: const Text('Login as userB'),
            ),
          ],
        ),
      ),
    );
  }
}
