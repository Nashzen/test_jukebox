import 'package:dio/dio.dart';
import 'package:test_jukebox/models/user_model.dart';

class UserRepository {
  var dio = Dio();

  //NOTE metodo de retorno da lista de dados
  Future<UserModel> getUsers() async {
    try {
      Response response = await dio.get(
          'https://crudcrud.com/api/ebaf53ff3d0d4075890d9d9f9e4aeca3/users');
      return UserModel.fromJson(response.data);
    } catch (e) {
      throw e;
    }
  }

  //NOTE metodo de retorno da informacao por ID
  Future<UserModel> getUserById(String id) async {
    try {
      Response response = await dio.get(
          'https://crudcrud.com/api/ebaf53ff3d0d4075890d9d9f9e4aeca3/users/$id');
      return UserModel.fromJson(response.data);
    } catch (e) {
      throw e;
    }
  }

  //NOTE metodo de criacao de usuario
  Future<UserModel> createUser(UserModel user) async {
    try {
      Response response = await dio.post(
          'https://crudcrud.com/api/ebaf53ff3d0d4075890d9d9f9e4aeca3/users',
          data: user.toJson());
      return UserModel.fromJson(response.data);
    } catch (e) {
      throw e;
    }
  }

  //NOTE metodo de edicao de usuario
  Future<UserModel> editUser(UserModel user) async {
    try {
      Response response = await dio.put(
          'https://crudcrud.com/api/ebaf53ff3d0d4075890d9d9f9e4aeca3/users/${user.id}',
          data: FormData.fromMap({
            'nome': user.nome,
            'email': user.email,
            'dataNascimento': user.dataNascimento,
            'senha': user.senha,
          }));
      return UserModel.fromJson(response.data);
    } catch (e) {
      throw e;
    }
  }

  //NOTE metodo de deletar de usuario
  Future<Null> deleteUser(String id) async {
    try {
      await dio.delete(
          'https://crudcrud.com/api/ebaf53ff3d0d4075890d9d9f9e4aeca3/users/$id');
    } catch (e) {
      throw e;
    }
  }
}
