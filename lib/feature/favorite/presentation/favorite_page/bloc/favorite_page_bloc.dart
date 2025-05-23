import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rick_and_morty/core/injector/injector.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';
import 'package:rick_and_morty/feature/characters/domain/usecases/remove_from_favorite_use_case.dart';
import 'package:rick_and_morty/feature/favorite/domain/usecases/stream_characters_usecase.dart';

part 'favorite_page_event.dart';
part 'favorite_page_state.dart';

class FavoritePageBloc extends Bloc<FavoritePageEvent, FavoritePageState> {
  FavoritePageBloc() : super(FavoritePageState()) {
    on<FavoritePageOpenedEvent>(_favoritePageOpenedEvent);
    on<RemoveFromFavoriteEvent>(_deleteFromFavoriteEvent);
  }

  final StreamCharactersUsecase _streamCharactersUsecase =
      getIt<StreamCharactersUsecase>();

  final RemoveFromFavoriteUseCase _deleteFromFavoriteUsecase = getIt();

  FutureOr<void> _favoritePageOpenedEvent(
    FavoritePageOpenedEvent event,
    Emitter<FavoritePageState> emit,
  ) async {
    await emit.onEach<List<Character>>(
      await _streamCharactersUsecase.call(),
      onData: (characters) {
        characters.removeWhere((element) => element.isFavorite == false);
        emit(state.copyWith(characters: characters));
      },
    );
  }

  FutureOr<void> _deleteFromFavoriteEvent(
    RemoveFromFavoriteEvent event,
    Emitter<FavoritePageState> emit,
  ) async {
    await _deleteFromFavoriteUsecase.call(event.id);
  }
}
