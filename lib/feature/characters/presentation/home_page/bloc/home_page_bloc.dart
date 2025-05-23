import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rick_and_morty/core/injector/injector.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';
import 'package:rick_and_morty/feature/characters/domain/usecases/add_to_favorite_use_case.dart';
import 'package:rick_and_morty/feature/characters/domain/usecases/get_chactacters_use_case.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(HomePageState()) {
    on<HomePageOpenedEvent>(_homePageOpenedEvent);
    on<AddToFavoriteEvent>(_addToFavoriteEvent);
  }

  final GetChactactersUseCase getChactactersUseCase =
      getIt<GetChactactersUseCase>();

  final AddToFavoriteUseCase addToFavoriteUseCase =
      getIt<AddToFavoriteUseCase>();

  FutureOr<void> _homePageOpenedEvent(
    HomePageOpenedEvent event,
    Emitter<HomePageState> emit,
  ) async {
    List<Character> characters = await getChactactersUseCase.call(50);
    emit(state.copyWith(characters: characters));
  }

  FutureOr<void> _addToFavoriteEvent(
    AddToFavoriteEvent event,
    Emitter<HomePageState> emit,
  ) {
    addToFavoriteUseCase.call(event.character);
  }
}
