import 'package:flutter/material.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';

class CharacterCardView extends StatelessWidget {
  const CharacterCardView({
    super.key,
    required this.character,
    required this.addToFavorite,
    required this.removeFromFavorite,
  });

  final Character character;
  final Function(int) addToFavorite;
  final Function(int) removeFromFavorite;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.teal, width: 3),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(character.name),
              IconButton(
                onPressed: () {
                  if (character.isFavorite) {
                    removeFromFavorite(character.id);
                  } else {
                    addToFavorite(character.id);
                  }
                },
                icon:
                    character.isFavorite
                        ? Icon(Icons.star)
                        : Icon(Icons.star_border),
              ),
            ],
          ),
          Image.network(character.image),
          Text("Пол: ${character.gender}"),
          Text("Статус: ${character.status}"),
        ],
      ),
    );
  }
}
