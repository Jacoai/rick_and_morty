import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/feature/favorite/domain/repositoty/abstract_favorite_repository.dart';

@injectable
class DeleteFromFavoriteUsecase {
  final AbstractFavoriteRepository repository;

  DeleteFromFavoriteUsecase({required this.repository});

  Future<void> call(int id) async {
    return repository.deleteFromFavorite(id);
  }
}
