import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void httpErrorHandle({
  required http.Response response,
  required VoidCallback onSuccess,
}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
      // showSnackBar(context, jsonDecode(response.body)['msg']);
      // showDialog(
      //   context: context,
      //   builder: (context) => ErrorDialog(
      //     question: "Sign In",
      //     title1: jsonDecode(response.body)['msg'],
      //   ),
      // );
      break;
    case 500:
      // showSnackBar(context, jsonDecode(response.body)['error']);
      // showDialog(
      //   context: context,
      //   builder: (context) => ErrorDialog(
      //     question: "Sign In",
      //     title1: jsonDecode(response.body)['error'],
      //   ),
      // );
      break;
    default:
    // showSnackBar(context, response.body);
  }
}
