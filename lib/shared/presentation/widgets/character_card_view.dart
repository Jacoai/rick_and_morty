import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/theme/theme.dart';
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
        border: Border.all(
          color:
              Theme.of(context).extension<ThemeColors>()?.accentColor ??
              AppColors.brown,
          width: 3,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(character.name, style: AppTextStyles.h5),
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
                        ? Icon(
                          Icons.star,
                          color:
                              Theme.of(
                                context,
                              ).extension<ThemeColors>()?.accentColor,
                        )
                        : Icon(
                          Icons.star_border,
                          color:
                              Theme.of(
                                context,
                              ).extension<ThemeColors>()?.accentColor,
                        ),
              ),
            ],
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.green,
                width: 3,
                strokeAlign: BorderSide.strokeAlignOutside,
              ),
            ),
            child: Image.network(character.image),
          ),
          const SizedBox(height: 10),
          Text("Пол: ${character.gender}", style: AppTextStyles.baseText),
          Text("Статус: ${character.status}", style: AppTextStyles.baseText),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
