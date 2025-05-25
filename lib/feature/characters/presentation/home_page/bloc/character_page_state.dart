part of 'character_page_bloc.dart';

class CharacterPageState {
  final List<Character> characters;

    CharacterPageState({this.characters = const []});

    CharacterPageState copyWith({List<Character>? characters}) {
      return CharacterPageState(characters: characters ?? this.characters);
    }
}
