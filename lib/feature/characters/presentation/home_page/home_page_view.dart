import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/feature/characters/presentation/home_page/bloc/home_page_bloc.dart';
import 'package:rick_and_morty/shared/presentation/widgets/character_list.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final HomePageBloc _bloc = HomePageBloc();

  @override
  void initState() {
    _bloc.add(HomePageOpenedEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => _bloc,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: BlocBuilder<HomePageBloc, HomePageState>(
            builder: (context, state) {
              return CharacterList(
                characters: state.characters,
                addToFavorite: (character) {
                  _bloc.add(AddToFavoriteEvent(character: character));
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
