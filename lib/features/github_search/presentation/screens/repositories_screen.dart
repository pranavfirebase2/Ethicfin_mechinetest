import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/dialog_utils.dart';
import '../../data/models/github_user.dart';
import '../providers/repositories_provider.dart';
import '../widgets/repo_list_tile.dart';

class RepositoriesScreen extends ConsumerStatefulWidget {
  final GithubUser user;

  const RepositoriesScreen({super.key, required this.user});

  @override
  ConsumerState<RepositoriesScreen> createState() => _RepositoriesScreenState();
}

class _RepositoriesScreenState extends ConsumerState<RepositoriesScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(repositoriesProvider.notifier).fetchRepos(widget.user.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(repositoriesProvider);

    ref.listen(repositoriesProvider, (previous, next) {
      if (next.error != null && next.error != previous?.error) {
        DialogUtils.showErrorDialog(context, next.error!);
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.repositories),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.textInverse,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.sort),
            onPressed: () {
              ref.read(repositoriesProvider.notifier).toggleSortType();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.sortType == SortType.stars 
                      ? AppStrings.sortedByRecentlyUpdated 
                      : AppStrings.sortedByStars
                  ),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
          ),
        ],
      ),
      body: _buildBody(state, context),
    );
  }

  Widget _buildBody(RepositoriesState state, BuildContext context) {
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.repos.isEmpty) {
      return const Center(child: Text(AppStrings.noRepositoriesFound));
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: state.repos.length,
      itemBuilder: (context, index) {
        return RepoListTile(repo: state.repos[index]);
      },
    );
  }
}
