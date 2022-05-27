import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:web_testing/routes_handler.dart';

class Routes1 {
  static String root = '/';
  static String listPage = '/listPage';
  static String detailPage = '/detailPage';

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print("Routes was not found");
      return;
    });
    router.define(root, handler: rootHandler);
    router.define(listPage, handler: listPageHandler);
    router.define(detailPage, handler: detailPageHandler);
  }
}
