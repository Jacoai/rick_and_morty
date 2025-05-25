import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/theme/theme.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';

class CharacterCardView extends StatefulWidget {
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
  State<CharacterCardView> createState() => _CharacterCardViewState();
}

class _CharacterCardViewState extends State<CharacterCardView> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: widget.character.gender == 'Female' ? AppColors.pink : null,
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
                      widget.character.name,
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
                      child: Image.network(
                        widget.character.image,
                        width: width * 0.5,
                      ),
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

                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: AnimatedRotation(
                        turns: turns,
                        duration: Duration(milliseconds: 700),
                        child: IconButton(
                          onPressed: () {
                            if (widget.character.isFavorite) {
                              widget.removeFromFavorite(widget.character.id);
                            } else {
                              if (widget.addToFavorite != null) {
                                widget.addToFavorite!(widget.character.id);
                              }
                            }
                            setState(() {
                              turns = turns == 1 ? 0 : 1;
                            });
                          },
                          icon:
                              widget.character.isFavorite
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
                    ),
                    Text(
                      "Пол: ${widget.character.gender}",
                      style: AppTextStyles.baseText,
                    ),
                    Text(
                      "Статус: ${widget.character.status}",
                      style: AppTextStyles.baseText,
                    ),
                    Text(
                      "Вид: ${widget.character.species}",
                      style: AppTextStyles.baseText,
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
