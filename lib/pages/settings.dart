import 'package:flutter/material.dart';
import 'package:itit_project/widgets/app_bar.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: EAppBar('Settings', context),
        body: Padding(
          padding: const EdgeInsets.all(9),
          child: ListView(
            children: [
              Card(
                color: Colors.grey.shade200,
                child: ListTile(
                  title: Text('Edit profile'),
                  trailing: Icon(Icons.account_circle),
                ),
              ),
              Card(
                color: Colors.grey.shade200,
                child: ListTile(
                  title: Text('dark mood'),
                  trailing: Icon(Icons.dark_mode),
                ),
              ),
              Card(
                color: Colors.grey.shade200,
                child: ListTile(
                  title: Text('privacy'),
                  trailing: Icon(Icons.privacy_tip),
                ),
              ),
              Card(
                color: Colors.grey.shade200,
                child: ListTile(
                  title: Text('logout'),
                  trailing: Icon(Icons.logout),
                ),
              ),
            ],
          ),
        ));
  }
}
