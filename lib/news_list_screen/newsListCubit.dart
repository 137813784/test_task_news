import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:programing/utils/baseCubitType.dart';

enum newsEventName {
  loading,
  loaded,
  error,
}

class NewsListCubit extends Cubit<BaseCubitType<newsEventName>> {
  NewsListCubit(initialState) : super(initialState);

  void validateNews() {
    emit(
      BaseCubitType(eventName: newsEventName.loaded),
    );
  }
}
