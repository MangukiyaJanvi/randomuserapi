import 'package:flutter/foundation.dart';
import 'package:randomuserapi/screens/homescreen/model/home_model.dart';
import 'package:randomuserapi/utils/api_helper.dart';

class HomeProvider extends ChangeNotifier
{
  UserModel? userModel;
  Future<void> JsonParsing()
  async {
    ApiHelper apiHelper=ApiHelper();
    userModel=await apiHelper.apiFromJson();
    notifyListeners();
    // return userModel;
  }
}