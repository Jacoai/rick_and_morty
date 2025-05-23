import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';
import 'package:rick_and_morty/feature/favorite/domain/repositoty/abstract_favorite_repository.dart';

@injectable
class StreamCharactersUsecase {
  final AbstractFavoriteRepository repository;

  StreamCharactersUsecase({required this.repository});

  Future<Stream<List<Character>>> call() async {
    return repository.streamCharacter();
  }
}
