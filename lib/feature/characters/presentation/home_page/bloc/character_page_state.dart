part of 'character_page_bloc.dart';

class CharacterPageState {
  final List<Character> characters;
  final bool isLoading;

  CharacterPageState({this.characters = const [], this.isLoading = false});

  CharacterPageState copyWith({List<Character>? characters, bool? isLoading}) {
    return CharacterPageState(
      characters: characters ?? this.characters,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
