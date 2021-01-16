// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import '../../packages/features/feature_home/lib/feature_home.dart' as _i2;
import '../../packages/features/feature_deck_builder/lib/feature_deck_builder.dart'
    as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i2.HomeScreenProvider());
    },
    DeckBuilderRoute.name: (entry) {
      return _i1.AdaptivePage(
          entry: entry, child: _i3.DeckBuilderScreenProvider());
    },
    DuelTab.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i2.DuelScreenProvider());
    },
    NewsTab.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i2.NewsScreenProvider());
    },
    DeckTab.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i2.DeckScreenProvider());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig<HomeRoute>(HomeRoute.name,
            path: '/',
            usesTabsRouter: true,
            routeBuilder: (match) => HomeRoute.fromMatch(match),
            children: [
              _i1.RouteConfig<DuelTab>(DuelTab.name,
                  path: 'duel-screen-provider',
                  routeBuilder: (_) => const DuelTab()),
              _i1.RouteConfig<NewsTab>(NewsTab.name,
                  path: 'news-screen-provider',
                  routeBuilder: (_) => const NewsTab()),
              _i1.RouteConfig<DeckTab>(DeckTab.name,
                  path: 'deck-screen-provider',
                  routeBuilder: (_) => const DeckTab())
            ]),
        _i1.RouteConfig<DeckBuilderRoute>(DeckBuilderRoute.name,
            path: '/deck-builder-screen-provider',
            routeBuilder: (_) => const DeckBuilderRoute())
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: '/', initialChildren: children);

  HomeRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'HomeRoute';
}

class DeckBuilderRoute extends _i1.PageRouteInfo {
  const DeckBuilderRoute() : super(name, path: '/deck-builder-screen-provider');

  static const String name = 'DeckBuilderRoute';
}

class DuelTab extends _i1.PageRouteInfo {
  const DuelTab() : super(name, path: 'duel-screen-provider');

  static const String name = 'DuelTab';
}

class NewsTab extends _i1.PageRouteInfo {
  const NewsTab() : super(name, path: 'news-screen-provider');

  static const String name = 'NewsTab';
}

class DeckTab extends _i1.PageRouteInfo {
  const DeckTab() : super(name, path: 'deck-screen-provider');

  static const String name = 'DeckTab';
}
