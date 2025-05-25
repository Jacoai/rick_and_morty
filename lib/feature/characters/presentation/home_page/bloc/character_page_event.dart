part of 'character_page_bloc.dart';

sealed class CharacterPageEvent {}

class CharacterPageOpenedEvent extends CharacterPageEvent {}

class AddToFavoriteEvent extends CharacterPageEvent {
  final int id;
  AddToFavoriteEvent({required this.id});
}

class RemoveFromFavoriteEvent extends CharacterPageEvent {
  final int id;
  RemoveFromFavoriteEvent({required this.id});
}

class LoadCharactersEvent extends CharacterPageEvent {}
