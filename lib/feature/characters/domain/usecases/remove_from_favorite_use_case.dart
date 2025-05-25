import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/feature/characters/domain/repository/abstract_character_repository.dart';

@injectable
class RemoveFromFavoriteUseCase {
  final AbstractCharacterRepository repository;
  RemoveFromFavoriteUseCase(this.repository);

  Future<void> call(int id) async {
    return await repository.removeFromFavorite(id);
  }
}
