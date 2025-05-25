import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rick_and_morty/core/injector/injector.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';
import 'package:rick_and_morty/feature/characters/domain/usecases/add_to_favorite_use_case.dart';
import 'package:rick_and_morty/feature/characters/domain/usecases/get_all_chactacters_use_case.dart';
import 'package:rick_and_morty/feature/characters/domain/usecases/remove_from_favorite_use_case.dart';
import 'package:rick_and_morty/feature/characters/domain/usecases/stream_characters_use_case.dart';

part 'character_page_event.dart';
part 'character_page_state.dart';

class CharacterPageBloc extends Bloc<CharacterPageEvent, CharacterPageState> {
  CharacterPageBloc() : super(CharacterPageState()) {
    on<CharacterPageOpenedEvent>(_homePageOpenedEvent);
    on<AddToFavoriteEvent>(_addToFavoriteEvent);
    on<RemoveFromFavoriteEvent>(_removeFromFavoriteEvent);
    on<LoadCharactersEvent>(_loadCharactersEvent);
  }

  final StreamCharactersUsecase _streamCharactersUsecase = getIt();

  final AddToFavoriteUseCase addToFavoriteUseCase = getIt();

  final RemoveFromFavoriteUseCase removeFromFavoriteUsecase = getIt();

  Future<void> _homePageOpenedEvent(
    CharacterPageOpenedEvent event,
    Emitter<CharacterPageState> emit,
  ) async {
    await emit.onEach<List<Character>>(
      await _streamCharactersUsecase.call(),
      onData: (characters) {
        emit(state.copyWith(characters: characters));
      },
    );
  }

  Future<void> _addToFavoriteEvent(
    AddToFavoriteEvent event,
    Emitter<CharacterPageState> emit,
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

  Future<void> _removeFromFavoriteEvent(
    RemoveFromFavoriteEvent event,
    Emitter<CharacterPageState> emit,
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

  FutureOr<void> _loadCharactersEvent(
    LoadCharactersEvent event,
    Emitter<CharacterPageState> emit,
  ) {
    print("LOADING");
  }
}
