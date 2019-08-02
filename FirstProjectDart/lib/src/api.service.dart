import 'package:angular/angular.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:FirstProjectDart/src/api.response.dart';

@Injectable()
class ApiService {
  Client client = Client();

  Stream<List<User>> getUser() => client
      .get('http://localhost:8888/api/users')
      .asStream()
      .map((response) =>
  UserResponse.fromJson(jsonDecode(response.body)).results);
}
