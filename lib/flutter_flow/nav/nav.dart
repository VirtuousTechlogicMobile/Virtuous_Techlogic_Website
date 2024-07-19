import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';
export '/backend/firebase_dynamic_links/firebase_dynamic_links.dart'
    show generateCurrentPageLink;

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => _RouteErrorBuilder(
        state: state,
        child: appStateNotifier.showSplashImage
            ? Builder(
                builder: (context) => Container(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  child: Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 300.0,
                      height: 300.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
            : const HomePageWidget(),
      ),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    child: Center(
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: 300.0,
                        height: 300.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                )
              : const HomePageWidget(),
          routes: [
            FFRoute(
              name: 'homePage',
              path: 'homePage',
              builder: (context, params) => const HomePageWidget(),
            ),
            FFRoute(
              name: 'aboutPage',
              path: 'aboutPage',
              builder: (context, params) => AboutPageWidget(
                index: params.getParam(
                  'index',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'servicesPage',
              path: 'servicesPage',
              builder: (context, params) => ServicesPageWidget(
                index: params.getParam(
                  'index',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'ourProductsPage',
              path: 'ourProductsPage',
              builder: (context, params) => OurProductsPageWidget(
                index: params.getParam(
                  'index',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'caseStudiesPage',
              path: 'caseStudiesPage',
              builder: (context, params) => CaseStudiesPageWidget(
                index: params.getParam(
                  'index',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'contactUsPage',
              path: 'contactUsPage',
              builder: (context, params) => ContactUsPageWidget(
                index: params.getParam(
                  'index',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'dedicatedServicePage',
              path: 'dedicatedServicePage',
              builder: (context, params) => const DedicatedServicePageWidget(),
            ),
            FFRoute(
              name: 'IndividualProductPage',
              path: 'individualProductPage',
              asyncParams: {
                'productRef':
                    getDoc(['buildProduct'], BuildProductRecord.fromSnapshot),
              },
              builder: (context, params) => IndividualProductPageWidget(
                productRef: params.getParam(
                  'productRef',
                  ParamType.Document,
                ),
                productTitle: params.getParam(
                  'productTitle',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'moreBlog',
              path: 'moreBlog',
              builder: (context, params) => const MoreBlogWidget(),
            ),
            FFRoute(
              name: 'stepsPage',
              path: 'stepsPage',
              builder: (context, params) => const StepsPageWidget(),
            ),
            FFRoute(
              name: 'individualBlogPage',
              path: 'individualBlogPage',
              builder: (context, params) => IndividualBlogPageWidget(
                individualBlogRefpage: params.getParam(
                  'individualBlogRefpage',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['blogDetails'],
                ),
                blogTitle: params.getParam(
                  'blogTitle',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'individualCaseStudy',
              path: 'individualCaseStudy',
              asyncParams: {
                'ref': getDoc(['caseStudies'], CaseStudiesRecord.fromSnapshot),
              },
              builder: (context, params) => IndividualCaseStudyWidget(
                ref: params.getParam(
                  'ref',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: 'cookieSettingPage',
              path: 'cookieSettingPage',
              builder: (context, params) => CookieSettingPageWidget(
                index: params.getParam(
                  'index',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'brandGuidelinesPage',
              path: 'brandGuidelinesPage',
              builder: (context, params) => BrandGuidelinesPageWidget(
                index: params.getParam(
                  'index',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'desclaimerPage',
              path: 'desclaimerPage',
              builder: (context, params) => DesclaimerPageWidget(
                index: params.getParam(
                  'index',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'termsServicePage',
              path: 'termsServicePage',
              builder: (context, params) => TermsServicePageWidget(
                index: params.getParam(
                  'index',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'sitemapPage',
              path: 'sitemapPage',
              builder: (context, params) => SitemapPageWidget(
                index: params.getParam(
                  'index',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'faqPage',
              path: 'faqPage',
              builder: (context, params) => FaqPageWidget(
                index: params.getParam(
                  'index',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'privacyPolicy',
              path: 'privacyPolicy',
              builder: (context, params) => PrivacyPolicyWidget(
                index: params.getParam(
                  'index',
                  ParamType.int,
                ),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.fade,
        duration: Duration(milliseconds: 0),
      );
}

class _RouteErrorBuilder extends StatefulWidget {
  const _RouteErrorBuilder({
    required this.state,
    required this.child,
  });

  final GoRouterState state;
  final Widget child;

  @override
  State<_RouteErrorBuilder> createState() => _RouteErrorBuilderState();
}

class _RouteErrorBuilderState extends State<_RouteErrorBuilder> {
  @override
  void initState() {
    super.initState();
    // Handle erroneous links from Firebase Dynamic Links.
    if (widget.state.uri.toString().startsWith('/link') &&
        widget.state.uri.toString().contains('request_ip_version')) {
      SchedulerBinding.instance.addPostFrameCallback((_) => context.go('/'));
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}