import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:randomuserapi/screens/homescreen/model/home_model.dart';
class ApiHelper
{
  Future<UserModel> apiFromJson()
  async {
    String link="https://randomuser.me/api/";
    Uri uri=Uri.parse(link);
    var json=await http.get(uri);
    var response=jsonDecode(json.body);
    print(response);
    UserModel userModel=UserModel.fromJson(response);
    return userModel;
  }
}