part of 'favorite_page_bloc.dart';

class FavoritePageState {
  final List<Character> characters;

  FavoritePageState({this.characters = const []});

  FavoritePageState copyWith({List<Character>? characters}) {
    return FavoritePageState(characters: characters ?? this.characters);
  }
}
