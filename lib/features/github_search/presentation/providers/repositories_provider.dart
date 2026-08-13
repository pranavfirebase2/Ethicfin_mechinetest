import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/github_repo.dart';
import 'providers.dart';

enum SortType { stars, recentlyUpdated }

class RepositoriesState {
  final bool isLoading;
  final List<GithubRepo> repos;
  final String? error;
  final SortType sortType;

  RepositoriesState({
    this.isLoading = false,
    this.repos = const [],
    this.error,
    this.sortType = SortType.stars,
  });

  RepositoriesState copyWith({
    bool? isLoading,
    List<GithubRepo>? repos,
    String? error,
    bool clearError = false,
    SortType? sortType,
  }) {
    return RepositoriesState(
      isLoading: isLoading ?? this.isLoading,
      repos: repos ?? this.repos,
      error: clearError ? null : (error ?? this.error),
      sortType: sortType ?? this.sortType,
    );
  }
}

class RepositoriesNotifier extends Notifier<RepositoriesState> {
  @override
  RepositoriesState build() {
    return RepositoriesState();
  }

  Future<void> fetchRepos(String username) async {
    // avoid fetching again if we already have it
    state = state.copyWith(isLoading: true, error: null, clearError: true, repos: []);
    
    final result = await ref.read(githubRepositoryProvider).getUserRepos(username);
    
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, error: failure.message),
      (repos) {
        final sortedRepos = _sortRepos(repos, state.sortType);
        state = state.copyWith(isLoading: false, repos: sortedRepos);
      },
    );
  }

  void toggleSortType() {
    final newSortType = state.sortType == SortType.stars ? SortType.recentlyUpdated : SortType.stars;
    final sortedRepos = _sortRepos(state.repos, newSortType);
    state = state.copyWith(sortType: newSortType, repos: sortedRepos);
  }

  List<GithubRepo> _sortRepos(List<GithubRepo> repos, SortType sortType) {
    final sorted = List<GithubRepo>.from(repos);
    if (sortType == SortType.stars) {
      sorted.sort((a, b) => b.stargazersCount.compareTo(a.stargazersCount));
    } else {
      sorted.sort((a, b) => b.updatedAt.compareTo(a.updatedAt));
    }
    return sorted;
  }
}

final repositoriesProvider = NotifierProvider<RepositoriesNotifier, RepositoriesState>(() {
  return RepositoriesNotifier();
});
