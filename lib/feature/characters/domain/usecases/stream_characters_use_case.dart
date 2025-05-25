import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';
import 'package:rick_and_morty/feature/characters/domain/repository/abstract_character_repository.dart';

@injectable
class StreamCharactersUsecase {
  final AbstractCharacterRepository repository;

  StreamCharactersUsecase({required this.repository});

  Future<Stream<List<Character>>> call() async {
    return repository.streamCharacter();
  }
}
