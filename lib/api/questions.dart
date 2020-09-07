import 'package:http/http.dart';

import 'common.dart';

Future getQuestions() async {
  String url = Common.baseUrl + "questions";

  var response = await get(url);

  if (response.statusCode == 200) {}
  throw 'Error connection';
}
