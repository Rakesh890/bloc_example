import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  var serviceRespose;

  Future executeGet(serviceName) async {
    try {
      await http.get(Uri.parse(serviceName)).then((value) => {
            if (value.statusCode == 200)
              {
                serviceRespose = jsonDecode(value.body),
              }
            else
              {
                print("Something Went Wrong"),
              }
          });
      return serviceRespose;
    } catch (err) {
      return Exception(err.toString());
    }
  }
}
