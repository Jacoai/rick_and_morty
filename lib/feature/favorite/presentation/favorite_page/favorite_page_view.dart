import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/feature/favorite/presentation/favorite_page/bloc/favorite_page_bloc.dart';
import 'package:rick_and_morty/shared/presentation/widgets/character_list.dart';

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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Избранное"),
              BlocBuilder<FavoritePageBloc, FavoritePageState>(
                builder: (context, state) {
                  return Expanded(
                    child: CharacterList(
                      characters: state.characters,
                      addToFavorite: (character) {},
                      removeFromFavorite:
                          (id) => _bloc.add(RemoveFromFavoriteEvent(id: id)),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
