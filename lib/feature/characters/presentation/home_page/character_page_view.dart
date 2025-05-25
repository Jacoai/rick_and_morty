import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/theme/theme.dart';
import 'package:rick_and_morty/feature/characters/presentation/home_page/bloc/character_page_bloc.dart';
import 'package:rick_and_morty/feature/characters/presentation/widgets/character_list.dart';

class CharacterPageView extends StatefulWidget {
  const CharacterPageView({super.key});

  @override
  State<CharacterPageView> createState() => _CharacterPageViewState();
}

class _CharacterPageViewState extends State<CharacterPageView> {
  final CharacterPageBloc _bloc = CharacterPageBloc();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _bloc.add(CharacterPageOpenedEvent());
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
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
                    return CharacterList(
                      scrollController: _scrollController,
                      characters: state.characters,
                      addToFavorite: (id) {
                        _bloc.add(AddToFavoriteEvent(id: id));
                      },
                      removeFromFavorite: (id) {
                        _bloc.add(RemoveFromFavoriteEvent(id: id));
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

  void _scrollListener() {
    // if (_scrollController.offset >=
    //         _scrollController.position.maxScrollExtent &&
    //     !_scrollController.position.outOfRange) {
    //   //_bloc.add(LoadCharactersEvent());
    // }
    if (_scrollController.offset >=
        _scrollController.position.maxScrollExtent) {
      print("Ends");
    }
  }
}
