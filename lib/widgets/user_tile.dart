import 'package:flutter/material.dart';
import 'package:test_jukebox/models/user_model.dart';
import 'package:test_jukebox/routes/app_routes.dart';

class UserTile extends StatelessWidget {
  final UserModel user;
  const UserTile(this.user);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Icon(Icons.person)),
      title: Text('${user.nome}, ${user.dataNascimento}'),
      subtitle: Text(user.email),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            //NOTE botao edit
            IconButton(
              icon: Icon(Icons.edit),
              color: Colors.blue[300],
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.EDIT_FORM,
                  arguments: user,
                );
              },
            ),
            //NOTE botao delete
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text('Excluir usuario'),
                    content: Text('Tem certeza?'),
                    actions: <Widget>[
                      FlatButton(
                        child: Text('Nao'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      FlatButton(
                        child: Text('Sim'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
