import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rick_and_morty/core/injector/injector.dart';
import 'package:rick_and_morty/core/shared/sort_enum.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';
import 'package:rick_and_morty/feature/characters/domain/usecases/remove_from_favorite_use_case.dart';
import 'package:rick_and_morty/feature/characters/domain/usecases/stream_favorite_characters_use_case.dart';

part 'favorite_page_event.dart';
part 'favorite_page_state.dart';

class FavoritePageBloc extends Bloc<FavoritePageEvent, FavoritePageState> {
  FavoritePageBloc() : super(FavoritePageState()) {
    on<FavoritePageOpenedEvent>(_favoritePageOpenedEvent);
    on<RemoveFromFavoriteEvent>(_deleteFromFavoriteEvent);
    on<ChangeSortEvent>(_changeSortEvent);
  }

  final StreamFavoriteCharactersUseCase _favoriteCharactersUseCase = getIt();
  final RemoveFromFavoriteUseCase _deleteFromFavoriteUsecase = getIt();

  Future<void> _favoritePageOpenedEvent(
    FavoritePageOpenedEvent event,
    Emitter<FavoritePageState> emit,
  ) async {
    await emit.onEach<List<Character>>(
      await _favoriteCharactersUseCase.call(),
      onData: (characters) {
        characters = sortCharacterList(characters, state.currentSort);
        emit(state.copyWith(characters: characters));
      },
    );
  }

  Future<void> _deleteFromFavoriteEvent(
    RemoveFromFavoriteEvent event,
    Emitter<FavoritePageState> emit,
  ) async {
    await _deleteFromFavoriteUsecase.call(event.id);
  }

  Future<void> _changeSortEvent(
    ChangeSortEvent event,
    Emitter<FavoritePageState> emit,
  ) async {
    emit(
      state.copyWith(
        characters: sortCharacterList(state.characters, event.sort),
        currentSort: event.sort,
      ),
    );
  }

  List<Character> sortCharacterList(
    List<Character> characters,
    SortParams sortParams,
  ) {
    switch (sortParams) {
      case SortParams.nameUp:
        characters.sort((a, b) => a.name[0].compareTo(b.name[0]));
        return characters;

      case SortParams.nameDown:
        characters.sort((a, b) => (b.name[0]).compareTo(a.name[0]));
        return characters;
    }
  }
}
