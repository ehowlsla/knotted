import 'package:get/get.dart';
import 'package:flutter_udid/flutter_udid.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiProvider extends GetConnect {
  Future<Response> postLogin(String id, String password, {String number}) async {
    // Future<Response> postLogin(String email, String password) async {

    var payload = {
      'id': id,
      'password': password,
    };
    if(number != null) payload['number'] = number;

    return post(
      'https://dev-api.pintoss.co.kr/login',
      payload,
      contentType: 'application/json',
      headers: {
        'PINTOSS-DEVICE-ID': await FlutterUdid.consistentUdid,
        'Accept': 'application/json'
      }
    );
  }

  Future<Response> postAuth(String id, String password) async {
    return post(
        'https://dev-api.pintoss.co.kr/auth',
        {
          'id': id,
          'password': password,
        },
        contentType: 'application/json',
        headers: {
          'Accept': 'application/json'
        }
    );
  }


  Future<Response> getCorps() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return get(
        'https://dev-api.pintoss.co.kr/corps',
        contentType: 'application/json',
        headers: {
          'PINTOSS-DEVICE-ID': await FlutterUdid.consistentUdid,
          'Accept': 'application/json',
          'Authorization': prefs.getString('Authorization') ?? ''
        }
    );
  }

  Future<Response> getBuy(String namespace) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return get(
        'https://dev-api.pintoss.co.kr/buy/$namespace',
        contentType: 'application/json',
        headers: {
          'PINTOSS-DEVICE-ID': await FlutterUdid.consistentUdid,
          'Accept': 'application/json',
          'Authorization': prefs.getString('Authorization') ?? ''
        }
    );
  }

  Future<Response> postSubmit(String receipt_id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return post(
        'https://dev-api.pintoss.co.kr/submit',
        {
          'receipt_id': receipt_id,
        },
        contentType: 'application/json',
        headers: {
          'PINTOSS-DEVICE-ID': await FlutterUdid.consistentUdid,
          'Accept': 'application/json',
          'Authorization': prefs.getString('Authorization') ?? ''
        }
    );
  }
}