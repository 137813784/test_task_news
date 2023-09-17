import 'dart:convert';
import 'dart:developer';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:programing/utils/baseCubitType.dart';

enum newsEventName {
  loading,
  loaded,
  error,
}

String apiKey() {
  return "43d9950f0103490b81e8cf6a64a95edd";
}

class HttpService {
  final String postsURL = "https://jsonplaceholder.typicode.com/posts";

  String everyNews = 'https://newsapi.org/v2/everything?q=Apple&from=2023-09-14&sortBy=popularity&apiKey=${apiKey()}';
  Future<void> getPosts() async {
    Dio? dio;
    var response=
    await dio?.get(everyNews);
     print('$response');
  }


  // Future<List<User>> getPosts() async {
  //   dynamic res = await get(Uri.parse(everyNews));
  //
  //   if (res.statusCode == 200) {
  //     List<dynamic> body = jsonDecode(res.body);
  //
  //     List<User> posts = body
  //         .map(
  //           (dynamic item) => User.fromJson(item),
  //         )
  //         .toList();
  //
  //     return posts;
  //   } else {
  //     throw "Unable to retrieve posts.";
  //   }
  // }
}

class NewsListCubit extends Cubit<BaseCubitType<newsEventName>> {
  NewsListCubit(initialState) : super(initialState);

  // void getNews() {
  //   dynamic news = Dio.emit(
  //     BaseCubitType(eventName: newsEventName.loaded),
  //   );
  // }
}
