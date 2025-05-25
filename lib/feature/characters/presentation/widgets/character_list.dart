import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';
import 'package:rick_and_morty/feature/characters/presentation/widgets/character_card_view.dart';

class CharacterList extends StatelessWidget {
  const CharacterList({
    super.key,
    required this.characters,
    required this.addToFavorite,
    required this.removeFromFavorite,
    this.scrollController,
  });

  final List<Character> characters;
  final Function(int) addToFavorite;
  final Function(int) removeFromFavorite;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: characters.length,
      itemBuilder:
          (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: CharacterCardView(
              character: characters[index],
              addToFavorite: (id) => addToFavorite(id),
              removeFromFavorite: (id) => removeFromFavorite(id),
            ),
          ),
    );
  }
}
