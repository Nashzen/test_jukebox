class UserModel {
  String id;
  String nome;
  String email;
  String dataNascimento;
  String senha;

  UserModel({
    this.id,
    this.nome,
    this.dataNascimento,
    this.email,
    this.senha,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['name'];
    email = json['email'];
    dataNascimento = json['dataNascimento'];
    senha = json['senha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['email'] = this.email;
    data['dataNascimento'] = this.dataNascimento;
    data['senha'] = this.senha;

    return data;
  }
}
