import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:web_testing/detail_page.dart';
import 'package:web_testing/home.dart';
import 'package:web_testing/list_page.dart';
import 'package:web_testing/page_not_found.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const MyHomePage(title: 'Hello');
});

var listPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const ListPage();
});

var detailPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  if (params['id']?.first == null) {
    return const PageNotFound();
  } else {
    int id = int.parse(params['id']!.first);
    return DetailPage(
      id: id,
    );
  }
});
