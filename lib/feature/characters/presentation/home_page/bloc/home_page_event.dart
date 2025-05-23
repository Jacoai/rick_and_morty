part of 'home_page_bloc.dart';

@immutable
sealed class HomePageEvent {}

class HomePageOpenedEvent extends HomePageEvent {}

class AddToFavoriteEvent extends HomePageEvent {
  final Character character;
  AddToFavoriteEvent({required this.character});
}
