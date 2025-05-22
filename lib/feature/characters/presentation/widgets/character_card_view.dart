import 'package:flutter/material.dart';
import 'package:rick_and_morty/feature/characters/domain/models/character/character.dart';

class CharacterCardView extends StatefulWidget {
  const CharacterCardView({super.key, required this.character});

  final Character character;

  @override
  State<CharacterCardView> createState() => _CharacterCardViewState();
}

class _CharacterCardViewState extends State<CharacterCardView> {
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
              Text(widget.character.name),
              IconButton(onPressed: () {}, icon: Icon(Icons.star_border)),
            ],
          ),
          Image.network(widget.character.image),
          Text("Пол: ${widget.character.gender}"),
          Text("Статус: ${widget.character.status}"),
          Text("Последний раз был замечен в ${widget.character.location.name}"),
        ],
      ),
    );
  }
}
