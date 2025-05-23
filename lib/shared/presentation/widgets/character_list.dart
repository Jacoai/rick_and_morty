import 'package:flutter/material.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';
import 'package:rick_and_morty/shared/presentation/widgets/character_card_view.dart';

class CharacterList extends StatelessWidget {
  const CharacterList({
    super.key,
    required this.characters,
    required this.addToFavorite,
  });

  final List<Character> characters;
  final Function(Character) addToFavorite;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: characters.length,
      itemBuilder:
          (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: CharacterCardView(
              character: characters[index],
              addFavorite: (character) => addToFavorite(character),
            ),
          ),
    );
  }
}
