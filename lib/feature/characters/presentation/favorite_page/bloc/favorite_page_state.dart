part of 'favorite_page_bloc.dart';

class FavoritePageState {
  final List<Character> characters;
  final SortParams currentSort;

  FavoritePageState({
    this.characters = const [],
    this.currentSort = SortParams.nameUp,
  });

  FavoritePageState copyWith({
    List<Character>? characters,
    SortParams? currentSort,
  }) {
    return FavoritePageState(
      characters: characters ?? this.characters,
      currentSort: currentSort ?? this.currentSort,
    );
  }
}
