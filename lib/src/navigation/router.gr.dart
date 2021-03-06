// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import '../../packages/features/feature_onboarding/lib/feature_onboarding.dart'
    as _i2;
import '../../packages/features/feature_home/lib/feature_home.dart' as _i3;
import '../../packages/features/feature_deck_builder/lib/feature_deck_builder.dart'
    as _i4;
import '../../packages/features/feature_yugioh_card_detail/lib/feature_yugioh_card_detail.dart'
    as _i5;
import '../../packages/features/feature_draw_card/lib/feature_draw_card.dart'
    as _i6;
import '../../packages/features/feature_speed_duel/lib/feature_speed_duel.dart'
    as _i7;
import '../../packages/features/feature_privacy_policy/lib/feature_privacy_policy.dart'
    as _i8;
import '../../packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart'
    as _i9;
import 'package:flutter/material.dart' as _i10;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    OnboardingRoute.name: (entry) {
      return _i1.AdaptivePage(
          entry: entry, child: _i2.OnboardingScreenProvider());
    },
    HomeRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i3.HomeScreenProvider());
    },
    DeckBuilderRoute.name: (entry) {
      var route = entry.routeData.as<DeckBuilderRoute>();
      return _i1.AdaptivePage(
          entry: entry,
          child:
              _i4.DeckBuilderScreenProvider(preBuiltDeck: route.preBuiltDeck));
    },
    YugiohCardDetailRoute.name: (entry) {
      var route = entry.routeData.as<YugiohCardDetailRoute>();
      return _i1.AdaptivePage(
          entry: entry,
          child: _i5.YugiohCardDetailScreenProvider(
              yugiohCard: route.yugiohCard, index: route.index));
    },
    DrawCardRoute.name: (entry) {
      var route = entry.routeData.as<DrawCardRoute>();
      return _i1.CustomPage(
          entry: entry,
          child: _i6.DrawCardScreenProvider(
              cardDrawnCallback: route.cardDrawnCallback),
          durationInMilliseconds: 0,
          reverseDurationInMilliseconds: 0);
    },
    SpeedDuelRoute.name: (entry) {
      var route = entry.routeData.as<SpeedDuelRoute>();
      return _i1.AdaptivePage(
          entry: entry,
          child: _i7.SpeedDuelScreenProvider(preBuiltDeck: route.preBuiltDeck));
    },
    PrivacyPolicyRoute.name: (entry) {
      return _i1.AdaptivePage(
          entry: entry, child: _i8.PrivacyPolicyScreenProvider());
    },
    DuelTab.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i3.DuelScreenProvider());
    },
    NewsTab.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i3.NewsScreenProvider());
    },
    DeckTab.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i3.DeckScreenProvider());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig<OnboardingRoute>(OnboardingRoute.name,
            path: '/',
            routeBuilder: (match) => OnboardingRoute.fromMatch(match)),
        _i1.RouteConfig<HomeRoute>(HomeRoute.name,
            path: '/home',
            usesTabsRouter: true,
            routeBuilder: (match) => HomeRoute.fromMatch(match),
            children: [
              _i1.RouteConfig<DuelTab>(DuelTab.name,
                  path: 'duel',
                  routeBuilder: (match) => DuelTab.fromMatch(match)),
              _i1.RouteConfig<NewsTab>(NewsTab.name,
                  path: 'news',
                  routeBuilder: (match) => NewsTab.fromMatch(match)),
              _i1.RouteConfig<DeckTab>(DeckTab.name,
                  path: 'deck',
                  routeBuilder: (match) => DeckTab.fromMatch(match))
            ]),
        _i1.RouteConfig<DeckBuilderRoute>(DeckBuilderRoute.name,
            path: '/deck-builder',
            routeBuilder: (match) => DeckBuilderRoute.fromMatch(match)),
        _i1.RouteConfig<YugiohCardDetailRoute>(YugiohCardDetailRoute.name,
            path: '/card-detail',
            routeBuilder: (match) => YugiohCardDetailRoute.fromMatch(match)),
        _i1.RouteConfig<DrawCardRoute>(DrawCardRoute.name,
            path: '/draw-card-screen-provider',
            routeBuilder: (match) => DrawCardRoute.fromMatch(match)),
        _i1.RouteConfig<SpeedDuelRoute>(SpeedDuelRoute.name,
            path: '/speed-duel',
            routeBuilder: (match) => SpeedDuelRoute.fromMatch(match)),
        _i1.RouteConfig<PrivacyPolicyRoute>(PrivacyPolicyRoute.name,
            path: '/privacy-policy',
            routeBuilder: (match) => PrivacyPolicyRoute.fromMatch(match))
      ];
}

class OnboardingRoute extends _i1.PageRouteInfo {
  const OnboardingRoute() : super(name, path: '/');

  OnboardingRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'OnboardingRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: '/home', initialChildren: children);

  HomeRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'HomeRoute';
}

class DeckBuilderRoute extends _i1.PageRouteInfo {
  DeckBuilderRoute({this.preBuiltDeck}) : super(name, path: '/deck-builder');

  DeckBuilderRoute.fromMatch(_i1.RouteMatch match)
      : preBuiltDeck = null,
        super.fromMatch(match);

  final _i9.PreBuiltDeck preBuiltDeck;

  static const String name = 'DeckBuilderRoute';
}

class YugiohCardDetailRoute extends _i1.PageRouteInfo {
  YugiohCardDetailRoute(
      {@_i10.required this.yugiohCard, @_i10.required this.index})
      : super(name, path: '/card-detail');

  YugiohCardDetailRoute.fromMatch(_i1.RouteMatch match)
      : yugiohCard = null,
        index = null,
        super.fromMatch(match);

  final _i9.YugiohCard yugiohCard;

  final int index;

  static const String name = 'YugiohCardDetailRoute';
}

class DrawCardRoute extends _i1.PageRouteInfo {
  DrawCardRoute({@_i10.required this.cardDrawnCallback})
      : super(name, path: '/draw-card-screen-provider');

  DrawCardRoute.fromMatch(_i1.RouteMatch match)
      : cardDrawnCallback = null,
        super.fromMatch(match);

  final void Function() cardDrawnCallback;

  static const String name = 'DrawCardRoute';
}

class SpeedDuelRoute extends _i1.PageRouteInfo {
  SpeedDuelRoute({@_i10.required this.preBuiltDeck})
      : super(name, path: '/speed-duel');

  SpeedDuelRoute.fromMatch(_i1.RouteMatch match)
      : preBuiltDeck = null,
        super.fromMatch(match);

  final _i9.PreBuiltDeck preBuiltDeck;

  static const String name = 'SpeedDuelRoute';
}

class PrivacyPolicyRoute extends _i1.PageRouteInfo {
  const PrivacyPolicyRoute() : super(name, path: '/privacy-policy');

  PrivacyPolicyRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'PrivacyPolicyRoute';
}

class DuelTab extends _i1.PageRouteInfo {
  const DuelTab() : super(name, path: 'duel');

  DuelTab.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'DuelTab';
}

class NewsTab extends _i1.PageRouteInfo {
  const NewsTab() : super(name, path: 'news');

  NewsTab.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'NewsTab';
}

class DeckTab extends _i1.PageRouteInfo {
  const DeckTab() : super(name, path: 'deck');

  DeckTab.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'DeckTab';
}
