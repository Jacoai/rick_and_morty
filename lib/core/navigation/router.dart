import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/navigation/root_screen.dart';
import 'package:rick_and_morty/feature/characters/presentation/home_page/home_page_view.dart';
import 'package:rick_and_morty/feature/favorite/presentation/favorite_page/favorite_page_view.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder:
          (context, state, navigationShell) =>
              RootScreen(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const HomePageView(),
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
      ],
    ),
  ],
);
