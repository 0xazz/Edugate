import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';
import '../../auth/firebase_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  EdugateFirebaseUser? initialUser;
  EdugateFirebaseUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(EdugateFirebaseUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? MainWidget() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? MainWidget() : LoginWidget(),
          routes: [
            FFRoute(
              name: 'Login',
              path: 'login',
              builder: (context, params) => LoginWidget(),
            ),
            FFRoute(
              name: 'Main',
              path: 'Login/main',
              builder: (context, params) => MainWidget(),
            ),
            FFRoute(
              name: 'Requests',
              path: 'requests',
              builder: (context, params) => RequestsWidget(),
            ),
            FFRoute(
              name: 'Schedule',
              path: 'schedule',
              builder: (context, params) => ScheduleWidget(),
            ),
            FFRoute(
              name: 'CurrentSemesterSchedule',
              path: 'currentSemesterSchedule',
              builder: (context, params) => CurrentSemesterScheduleWidget(
                studentRef: params.getParam('studentRef',
                    ParamType.DocumentReference, false, 'students'),
              ),
            ),
            FFRoute(
              name: 'AddCourse',
              path: 'addCourse',
              builder: (context, params) => AddCourseWidget(
                studentRef: params.getParam('studentRef',
                    ParamType.DocumentReference, false, 'students'),
              ),
            ),
            FFRoute(
              name: 'ChooseSection',
              path: 'chooseSection',
              builder: (context, params) => ChooseSectionWidget(
                studentRef: params.getParam('studentRef',
                    ParamType.DocumentReference, false, 'students'),
                courseRef: params.getParam(
                    'courseRef', ParamType.DocumentReference, false, 'courses'),
              ),
            ),
            FFRoute(
              name: 'Absences',
              path: 'absences',
              builder: (context, params) => AbsencesWidget(),
            ),
            FFRoute(
              name: 'FinalExamsSchedule',
              path: 'finalExamsSchedule',
              builder: (context, params) => FinalExamsScheduleWidget(),
            ),
            FFRoute(
              name: 'Results',
              path: 'results',
              builder: (context, params) => ResultsWidget(
                studentref: params.getParam('studentref',
                    ParamType.DocumentReference, false, 'students'),
              ),
            ),
            FFRoute(
              name: 'ExceptionsTheStudentRequests',
              path: 'exceptionsTheStudentRequests',
              builder: (context, params) => ExceptionsTheStudentRequestsWidget(
                studentRef: params.getParam('studentRef',
                    ParamType.DocumentReference, false, 'students'),
              ),
            ),
            FFRoute(
              name: 'gpatest',
              path: 'gpatest',
              builder: (context, params) => GpatestWidget(
                studentref: params.getParam('studentref',
                    ParamType.DocumentReference, false, 'students'),
              ),
            ),
            FFRoute(
              name: 'GPAPage',
              path: 'gPAPage',
              builder: (context, params) => GPAPageWidget(),
            ),
            FFRoute(
              name: 'ExpectedGPA',
              path: 'expectedGPA',
              builder: (context, params) => ExpectedGPAWidget(
                regc: params.getParam<DocumentReference>(
                    'regc', ParamType.DocumentReference, true, 'courses'),
              ),
            ),
            FFRoute(
              name: 'RateTheInstructor',
              path: 'rateTheInstructor',
              builder: (context, params) => RateTheInstructorWidget(
                studentref: params.getParam('studentref',
                    ParamType.DocumentReference, false, 'students'),
              ),
            ),
            FFRoute(
              name: 'board',
              path: 'board',
              builder: (context, params) => BoardWidget(),
            ),
            FFRoute(
              name: 'Personal',
              path: 'personal',
              builder: (context, params) => PersonalWidget(),
            ),
            FFRoute(
              name: 'personalinfo',
              path: 'personalinfo',
              builder: (context, params) => PersonalinfoWidget(),
            ),
            FFRoute(
              name: 'AcademicCalendar',
              path: 'academicCalendar',
              builder: (context, params) => AcademicCalendarWidget(),
            ),
            FFRoute(
              name: 'FinancialInformation',
              path: 'financialInformation',
              builder: (context, params) => FinancialInformationWidget(
                stdRef: params.getParam(
                    'stdRef', ParamType.DocumentReference, false, 'students'),
              ),
            ),
            FFRoute(
              name: 'Reports',
              path: 'reports',
              builder: (context, params) => ReportsWidget(),
            ),
            FFRoute(
              name: 'CommunicateWithAdvisor',
              path: 'communicateWithAdvisor',
              builder: (context, params) => CommunicateWithAdvisorWidget(
                instructorRef: params.getParam('instructorRef',
                    ParamType.DocumentReference, false, 'instructors'),
              ),
            ),
            FFRoute(
              name: 'WithdrawFromCourse',
              path: 'withdrawFromCourse',
              builder: (context, params) => WithdrawFromCourseWidget(
                studentRef: params.getParam('studentRef',
                    ParamType.DocumentReference, false, 'students'),
              ),
            ),
            FFRoute(
              name: 'ChangeTheMajor',
              path: 'changeTheMajor',
              builder: (context, params) => ChangeTheMajorWidget(
                studentRef: params.getParam('studentRef',
                    ParamType.DocumentReference, false, 'students'),
              ),
            ),
            FFRoute(
              name: 'Exception',
              path: 'exception',
              builder: (context, params) => ExceptionWidget(),
            ),
            FFRoute(
              name: 'review_change_major_status',
              path: 'reviewChangeMajorStatus',
              builder: (context, params) => ReviewChangeMajorStatusWidget(
                studentRef: params.getParam('studentRef',
                    ParamType.DocumentReference, false, 'students'),
              ),
            ),
            FFRoute(
              name: 'Courses',
              path: 'courses',
              builder: (context, params) => CoursesWidget(),
            ),
            FFRoute(
              name: 'MajorPlan',
              path: 'majorPlan',
              builder: (context, params) => MajorPlanWidget(),
            ),
            FFRoute(
              name: 'AvailableCourses',
              path: 'availableCourses',
              builder: (context, params) => AvailableCoursesWidget(),
            ),
            FFRoute(
              name: 'SectionsException',
              path: 'sectionsException',
              builder: (context, params) => SectionsExceptionWidget(
                studentRef: params.getParam('studentRef',
                    ParamType.DocumentReference, false, 'students'),
                courseRef: params.getParam(
                    'courseRef', ParamType.DocumentReference, false, 'courses'),
              ),
            ),
            FFRoute(
              name: 'testschedual',
              path: 'testschedual',
              builder: (context, params) => TestschedualWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ).toRoute(appStateNotifier),
      ],
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
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
      (state.extraMap.length == 1 &&
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
    ParamType type, [
    bool isList = false,
    String? collectionName,
  ]) {
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
    return deserializeParam<T>(param, type, isList, collectionName);
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
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).primaryColor,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
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

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
