import 'package:mobx/mobx.dart';
import 'package:test_jukebox/models/user_model.dart';
import 'package:test_jukebox/repositories/user_repository.dart';
part 'user_controller.g.dart';

class UserController = _UserControllerBase with _$UserController;

abstract class _UserControllerBase with Store {
  UserRepository repository = UserRepository();

  @observable
  UserModel userModel;

  @action
  getUsers() async {
    try {
      userModel = await repository.getUsers();
    } catch (e) {
      print(e);
    }
  }

  @action
  getUserById() async {
    try {
      userModel = await repository.getUsers();
    } catch (e) {
      print(e);
    }
  }

  @action
  createUser(UserModel userModel) async {
    try {
      await repository.createUser(userModel);
    } catch (e) {
      print(e);
    }
  }

  @action
  editUser() async {
    try {
      await repository.editUser(userModel);
    } catch (e) {
      print(e);
    }
  }

  @action
  deleteUser(String id) async {
    try {
      await repository.deleteUser(userModel.id);
    } catch (e) {
      print(e);
    }
  }
}
