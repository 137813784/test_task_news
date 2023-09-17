import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:programing/utils/baseCubitType.dart';

enum newsEventName {
  loading,
  loaded,
  error,
}

class HttpService {
  final String postsURL = "https://jsonplaceholder.typicode.com/posts";
  String everyNews = "https://newsapi.org/v2/everything?q=Apple&from=2023-09-14&sortBy=popularity&apiKey=API_KEY";
  String apiKey ="43d9950f0103490b81e8cf6a64a95edd";

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
