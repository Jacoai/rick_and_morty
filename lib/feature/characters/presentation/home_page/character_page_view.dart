import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/theme/theme.dart';
import 'package:rick_and_morty/feature/characters/presentation/home_page/bloc/character_page_bloc.dart';
import 'package:rick_and_morty/feature/characters/presentation/widgets/character_card_view.dart';

class CharacterPageView extends StatefulWidget {
  const CharacterPageView({super.key});

  @override
  State<CharacterPageView> createState() => _CharacterPageViewState();
}

class _CharacterPageViewState extends State<CharacterPageView> {
  final CharacterPageBloc _bloc = CharacterPageBloc();
  final int elementsBeforeLoading = 2;

  @override
  void initState() {
    _bloc.add(CharacterPageOpenedEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 15),
      body: BlocProvider(
        create: (context) => _bloc,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text("Домашняя странциа", style: AppTextStyles.h1),
              Expanded(
                child: BlocBuilder<CharacterPageBloc, CharacterPageState>(
                  builder: (context, state) {
                    return ListView.builder(
                      itemCount: state.characters.length,
                      addAutomaticKeepAlives: false,
                      itemBuilder: (context, index) {
                        _loadNewCharacters(state.characters.length, index);
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: CharacterCardView(
                            character: state.characters[index],
                            addToFavorite:
                                (id) => _bloc.add(AddToFavoriteEvent(id: id)),
                            removeFromFavorite:
                                (id) =>
                                    _bloc.add(RemoveFromFavoriteEvent(id: id)),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _loadNewCharacters(int cherectersLength, int index) {
    if (index + elementsBeforeLoading >= cherectersLength) {
      _bloc.add(LoadCharactersEvent());
    }
  }
}
