part of 'favorite_page_bloc.dart';

sealed class FavoritePageEvent {}

class FavoritePageOpenedEvent extends FavoritePageEvent {}

class RemoveFromFavoriteEvent extends FavoritePageEvent {
  final int id;
  RemoveFromFavoriteEvent({required this.id});
}

class ChangeSortEvent extends FavoritePageEvent {
  final SortParams sort;
  ChangeSortEvent({required this.sort});
}
