import 'package:flutter/material.dart';

class User {
  final String name;
  final String email;

  User({required this.name, required this.email});
}

class UserTileScreen extends StatelessWidget {
  UserTileScreen({super.key});

  final List<User> users = [
    User(name: 'Yasir Syed', email: 'yasirsyed@example.com'),
    User(name: 'Ankit Singh', email: 'ankitSningh@example.com'),
    User(name: 'Sara Ahmed', email: 'saraahmed@example.com'),
    User(name: 'Sahil Rajput', email: 'SahilRajput@example.com'),
    User(name: 'Abhishek Sharma', email: 'AbhishekSharma@example.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Tile List')),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return UserTile(name: user.name, email: user.email);
        },
      ),
    );
  }
}

class UserTile extends StatelessWidget {
  final String name;
  final String email;

  const UserTile({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        elevation: 3,
        child: ListTile(
          leading: const Icon(Icons.person),
          title: Text(name),
          subtitle: Text(email),
        ),
      ),
    );
  }
}
