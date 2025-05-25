import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/theme/theme.dart';
import 'package:rick_and_morty/feature/characters/presentation/favorite_page/bloc/favorite_page_bloc.dart';
import 'package:rick_and_morty/feature/characters/presentation/widgets/character_card_view.dart';

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
      appBar: AppBar(toolbarHeight: 15),
      body: BlocProvider(
        create: (context) => _bloc,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Избранное", style: AppTextStyles.h1),
              BlocBuilder<FavoritePageBloc, FavoritePageState>(
                builder: (context, state) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: state.characters.length,
                      addAutomaticKeepAlives: false,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: CharacterCardView(
                            character: state.characters[index],
                            removeFromFavorite:
                                (id) =>
                                    _bloc.add(RemoveFromFavoriteEvent(id: id)),
                          ),
                        );
                      },
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
