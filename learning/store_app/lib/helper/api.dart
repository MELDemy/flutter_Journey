import 'package:dio/dio.dart';

class Api {
  Future<List<dynamic>> get(
      {required String url, Map<String, dynamic>? headers}) async {
    Response response =
        await Dio().get(url, options: Options(headers: headers));

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
          'There is a problem with status code : ${response.statusCode} with body ${response}');
    }
  }

  Future<Response<dynamic>> post({
    required String url,
    required Map<String, dynamic> body,
    Map<String, dynamic>? headers,
  }) async {
    Response response =
        await Dio().post(url, data: body, options: Options(headers: headers));
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
          "There was an error with status code: ${response.statusCode} with body ${response}");
    }
  }

  Future<Response<dynamic>> put({
    required String url,
    required Map<String, dynamic> body,
    Map<String, dynamic>? headers,
  }) async {
    headers ??= {};
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    try {
      Response response = await Dio().put(url, data: body);
      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception(
            "There was an error with status code: ${response.statusCode} with body ${response}");
      }
    } catch (e) {
      print(e.toString());
      throw (e);
    }
  }
}
