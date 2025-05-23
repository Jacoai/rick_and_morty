import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/feature/characters/presentation/widgets/character_card_view.dart';
import 'package:rick_and_morty/feature/favorite/presentation/favorite_page/bloc/favorite_page_bloc.dart';

class FavoritePageView extends StatefulWidget {
  const FavoritePageView({super.key});

  @override
  State<FavoritePageView> createState() => _FavoritePageViewState();
}

class _FavoritePageViewState extends State<FavoritePageView> {
  final FavoritePageBloc _bloc = FavoritePageBloc();

  @override
  void initState() {
    _bloc.add(FavoritePageOpenedEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => _bloc,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: characterList(),
        ),
      ),
    );
  }

  Widget characterList() {
    return BlocBuilder<FavoritePageBloc, FavoritePageState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.characters.length,
          itemBuilder:
              (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: CharacterCardView(
                  character: state.characters[index],
                  addFavorite: (character) {},
                ),
              ),
        );
      },
    );
  }
}
