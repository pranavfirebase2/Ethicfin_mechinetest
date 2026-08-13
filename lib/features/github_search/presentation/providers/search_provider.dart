import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/error/failures.dart';
import '../../domain/repositories/github_repository.dart';
import '../../data/models/github_user.dart';
import 'providers.dart';

class SearchState {
  final bool isLoading;
  final GithubUser? user;
  final String? error;

  SearchState({this.isLoading = false, this.user, this.error});

  SearchState copyWith({bool? isLoading, GithubUser? user, String? error, bool clearError = false}) {
    return SearchState(
      isLoading: isLoading ?? this.isLoading,
      user: user ?? this.user,
      error: clearError ? null : (error ?? this.error),
    );
  }
}

class SearchNotifier extends Notifier<SearchState> {
  @override
  SearchState build() => SearchState();

  Future<void> searchUser(String username) async {
    if (username.trim().isEmpty) return;
    
    state = state.copyWith(isLoading: true, error: null, user: null, clearError: true);
    
    final result = await ref.read(githubRepositoryProvider).getUser(username);
    
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, error: failure.message),
      (user) => state = state.copyWith(isLoading: false, user: user),
    );
  }
}

final searchProvider = NotifierProvider<SearchNotifier, SearchState>(() {
  return SearchNotifier();
});
