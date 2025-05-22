import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/feature/characters/presentation/home_page/bloc/home_page_bloc.dart';
import 'package:rick_and_morty/feature/characters/presentation/widgets/character_card_view.dart';

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
          child: characterList(),
        ),
      ),
    );
  }

  Widget characterList() {
    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.characters.length,
          itemBuilder:
              (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: CharacterCardView(character: state.characters[index]),
              ),
        );
      },
    );
  }
}
