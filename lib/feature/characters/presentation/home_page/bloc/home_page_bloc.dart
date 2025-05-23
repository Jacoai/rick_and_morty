import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rick_and_morty/core/injector/injector.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';
import 'package:rick_and_morty/feature/characters/domain/usecases/add_to_favorite_use_case.dart';
import 'package:rick_and_morty/feature/characters/domain/usecases/get_all_chactacters_use_case.dart';
import 'package:rick_and_morty/feature/characters/domain/usecases/remove_from_favorite_use_case.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(HomePageState()) {
    on<HomePageOpenedEvent>(_homePageOpenedEvent);
    on<AddToFavoriteEvent>(_addToFavoriteEvent);
    on<RemoveFromFavoriteEvent>(_removeFromFavoriteEvent);
  }

  final GetAllChactactersUseCase getChactactersUseCase =
      getIt<GetAllChactactersUseCase>();

  final AddToFavoriteUseCase addToFavoriteUseCase =
      getIt<AddToFavoriteUseCase>();

  final RemoveFromFavoriteUseCase removeFromFavoriteUsecase = getIt();

  FutureOr<void> _homePageOpenedEvent(
    HomePageOpenedEvent event,
    Emitter<HomePageState> emit,
  ) async {
    List<Character> characters = await getChactactersUseCase.call();
    emit(state.copyWith(characters: characters));
  }

  FutureOr<void> _addToFavoriteEvent(
    AddToFavoriteEvent event,
    Emitter<HomePageState> emit,
  ) async {
    await addToFavoriteUseCase.call(event.id);
    //update character in state
    List<Character> characters = _updateFavorite(
      state.characters,
      event.id,
      true,
    );

    emit(state.copyWith(characters: characters));
  }

  FutureOr<void> _removeFromFavoriteEvent(
    RemoveFromFavoriteEvent event,
    Emitter<HomePageState> emit,
  ) async {
    await removeFromFavoriteUsecase.call(event.id);

    List<Character> characters = _updateFavorite(
      state.characters,
      event.id,
      false,
    );

    emit(state.copyWith(characters: characters));
  }

  List<Character> _updateFavorite(
    List<Character> characters,
    int id,
    bool isFavorite,
  ) {
    List<Character> characters = state.characters;
    int index = characters.indexWhere((element) => element.id == id);
    characters[index] = characters[index].copyWith(isFavorite: isFavorite);
    return characters;
  }
}
