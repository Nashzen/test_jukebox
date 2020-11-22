import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_jukebox/fake_data/dummy_users.dart';
import 'package:test_jukebox/models/user_model.dart';
import 'package:test_jukebox/routes/app_routes.dart';
import 'package:test_jukebox/widgets/user_tile.dart';

class UserList extends StatelessWidget {
  UserModel userModel = UserModel();

  @override
  Widget build(BuildContext context) {
    final users = DUMMY_USERS;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lista de usuários'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.CREATE_FORM);
            },
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app_rounded),
            onPressed: () {
              // Navigator.of(context).pushNamed(AppRoutes.LOGIN);
              Navigator.pop(context);
            },
          ),
        ],
      ),
      // body: Observer(
      //   builder: (_) => ListView.builder(
      //     itemCount: userModel.length,
      //     itemBuilder: (ctx, i) => UserTile(
      //       userModel.values.elementAt(i),
      //     ),
      //   ),
      // ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
      ),
    );
  }
}
