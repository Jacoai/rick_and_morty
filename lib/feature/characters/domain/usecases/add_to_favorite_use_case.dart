import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/feature/characters/domain/repository/abstract_character_repository.dart';

@injectable
class AddToFavoriteUseCase {
  final AbstractCharacterRepository repository;
  AddToFavoriteUseCase(this.repository);

  Future<void> call(int id) async {
    return await repository.addToFavorite(id);
  }
}
