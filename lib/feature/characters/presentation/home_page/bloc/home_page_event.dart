part of 'home_page_bloc.dart';

@immutable
sealed class HomePageEvent {}

class HomePageOpenedEvent extends HomePageEvent {}

class AddToFavoriteEvent extends HomePageEvent {
  final int id;
  AddToFavoriteEvent({required this.id});
}

class RemoveFromFavoriteEvent extends HomePageEvent {
  final int id;
  RemoveFromFavoriteEvent({required this.id});
}
