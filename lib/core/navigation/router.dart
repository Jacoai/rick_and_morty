import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/navigation/root_screen.dart';
import 'package:rick_and_morty/feature/characters/presentation/home_page/character_page_view.dart';
import 'package:rick_and_morty/feature/characters/presentation/favorite_page/favorite_page_view.dart';
import 'package:rick_and_morty/feature/settings/presentation/settings_page/settings_page_view.dart';

final router = GoRouter(
  initialLocation: '/home',
  routes: [
    StatefulShellRoute.indexedStack(
      builder:
          (context, state, navigationShell) =>
              RootScreen(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              builder: (context, state) => const CharacterPageView(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/favorite',
              builder: (context, state) => const FavoritePageView(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/settings',
              builder: (context, state) => const SettingsPageView(),
            ),
          ],
        ),
      ],
    ),
  ],
);
