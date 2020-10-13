// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/auth_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injection_module.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/todos/i_todo_repository.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'application/todos/todo_actor/todo_actor_bloc.dart';
import 'application/todos/todo_form/todo_form_bloc.dart';
import 'infrastructure/todos/todo_repository.dart';
import 'application/todos/todo_watcher/todo_watcher_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectionModule = _$FirebaseInjectionModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectionModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectionModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectionModule.googleSignIn);
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(get<FirebaseAuth>(), get<GoogleSignIn>()));
  gh.lazySingleton<ITodoRepository>(
      () => TodoRepository(get<FirebaseFirestore>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<SignUpFormBloc>(() => SignUpFormBloc(get<IAuthFacade>()));
  gh.factory<TodoActorBloc>(() => TodoActorBloc(get<ITodoRepository>()));
  gh.factory<TodoFormBloc>(() => TodoFormBloc(get<ITodoRepository>()));
  gh.factory<TodoWatcherBloc>(() => TodoWatcherBloc(get<ITodoRepository>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  return get;
}

class _$FirebaseInjectionModule extends FirebaseInjectionModule {}
