import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/theme/theme.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';

class CharacterCardView extends StatelessWidget {
  const CharacterCardView({
    super.key,
    required this.character,
    this.addToFavorite,
    required this.removeFromFavorite,
  });

  final Character character;
  final Function(int)? addToFavorite;
  final Function(int) removeFromFavorite;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color:
              Theme.of(context).extension<ThemeColors>()?.accentColor ??
              AppColors.brown,
          width: 3,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: IntrinsicHeight(
          child: Row(
            spacing: 12,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                spacing: 8,
                children: [
                  SizedBox(
                    width: width * 0.5,
                    child: Text(
                      character.name,
                      style: AppTextStyles.h5,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      softWrap: true,
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: AppColors.green,
                        width: 3,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(character.image, width: width * 0.5),
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //spacing: 12,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {
                          if (character.isFavorite) {
                            removeFromFavorite(character.id);
                          } else {
                            if (addToFavorite != null) {
                              addToFavorite!(character.id);
                            }
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
                    ),
                    Text(
                      "Пол: ${character.gender}",
                      style: AppTextStyles.baseText,
                    ),
                    Text(
                      "Статус: ${character.status}",
                      style: AppTextStyles.baseText,
                    ),
                    Text(
                      "Вид: ${character.species}",
                      style: AppTextStyles.baseText,
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Column(
        //   spacing: 8,
        //   children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Expanded(
        //           child: Text(
        //             character.name,
        //             style: AppTextStyles.h5,
        //             textAlign: TextAlign.center,
        //             overflow: TextOverflow.clip,
        //           ),
        //         ),
        //         IconButton(
        //           onPressed: () {
        //             if (character.isFavorite) {
        //               removeFromFavorite(character.id);
        //             } else {
        //               if (addToFavorite != null) addToFavorite!(character.id);
        //             }
        //           },
        //           icon:
        //               character.isFavorite
        //                   ? Icon(
        //                     Icons.star,
        //                     color:
        //                         Theme.of(
        //                           context,
        //                         ).extension<ThemeColors>()?.accentColor,
        //                   )
        //                   : Icon(
        //                     Icons.star_border,
        //                     color:
        //                         Theme.of(
        //                           context,
        //                         ).extension<ThemeColors>()?.accentColor,
        //                   ),
        //         ),
        //       ],
        //     ),
        //     Row(
        //       children: [
        //
        //         Column(
        //           children: [
        //             Text(
        //               "Пол: ${character.gender}",
        //               style: AppTextStyles.baseText,
        //             ),
        //             Text(
        //               "Статус: ${character.status}",
        //               style: AppTextStyles.baseText,
        //             ),
        //             Text(
        //               "Вид: ${character.species}",
        //               style: AppTextStyles.baseText,
        //             ),
        //             Text(
        //               "Пол: ${character.gender}",
        //               style: AppTextStyles.baseText,
        //             ),
        //           ],
        //         ),
        //       ],
        //     ),
        //     const SizedBox(height: 8),
        //   ],
        // ),
      ),
    );
  }
}
