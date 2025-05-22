part of 'home_page_bloc.dart';

class HomePageState {
  final List<Character> characters;

  HomePageState({this.characters = const []});

  HomePageState copyWith({List<Character>? characters}) {
    return HomePageState(characters: characters ?? this.characters);
  }
}
