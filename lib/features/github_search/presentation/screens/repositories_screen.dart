import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.user.login}\'s Repos'),
        actions: [
          IconButton(
            icon: const Icon(Icons.sort),
            onPressed: () {
              ref.read(repositoriesProvider.notifier).toggleSortType();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.sortType == SortType.stars 
                      ? 'Sorted by Recently Updated' 
                      : 'Sorted by Stars'
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

    if (state.error != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline, size: 48, color: Colors.red.shade300),
              const SizedBox(height: 16),
              Text(
                state.error!,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    if (state.repos.isEmpty) {
      return const Center(child: Text('No repositories found.'));
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
