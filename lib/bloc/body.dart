import 'package:flutter/material.dart';

import '../data/models/user_model.dart';

class UserBody extends StatefulWidget {
  final List<UserModel>? users;

  const UserBody({super.key, required this.users});

  @override
  _UserBodyState createState() => _UserBodyState();
}

class _UserBodyState extends State<UserBody> {
  List<UserModel>? filteredUsers;
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredUsers = widget.users;
    searchController.addListener(_filterUsers);
  }

  @override
  void dispose() {
    searchController.removeListener(_filterUsers);
    searchController.dispose();
    super.dispose();
  }

  void _filterUsers() {
    final query = searchController.text.toLowerCase();
    setState(() {
      filteredUsers = widget.users?.where((user) {
        return user.name?.toLowerCase().contains(query) ?? false;
      }).toList();
    });
  }

  void handleUserTap(BuildContext context, UserModel? user) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserDetailScreen(user: user),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              labelText: 'Search by name',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: filteredUsers?.length ?? 0,
            itemBuilder: (context, index) {
              final user = filteredUsers?[index];
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                elevation: 4,
                child: ListTile(
                  title: Text(user?.name ?? ''),
                  subtitle: Text(user?.email ?? ''),
                  onTap: () => handleUserTap(context, user),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class UserListScreen extends StatelessWidget {
  final List<UserModel> users;

  const UserListScreen({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: UserBody(users: users),
    );
  }
}

class UserDetailScreen extends StatelessWidget {
  final UserModel? user;

  const UserDetailScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(user?.name ?? '')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${user?.name ?? ''}',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Username: ${user?.username ?? ''}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Email: ${user?.email ?? ''}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Phone: ${user?.phone ?? ''}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Website: ${user?.website ?? ''}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Address:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(
                '${user?.address?.street ?? ''}, ${user?.address?.suite ?? ''}, ${user?.address?.city ?? ''}, ${user?.address?.zipcode ?? ''}',
                style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Company:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(user?.company?.name ?? '', style: TextStyle(fontSize: 18)),
            Text('Catch Phrase: ${user?.company?.catchPhrase ?? ''}',
                style: TextStyle(fontSize: 18)),
            Text('BS: ${user?.company?.bs ?? ''}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
