import 'package:flutter/material.dart';
import '../../data/models/github_repo.dart';
import 'package:intl/intl.dart';

class RepoListTile extends StatelessWidget {
  final GithubRepo repo;

  const RepoListTile({super.key, required this.repo});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              repo.name,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            if (repo.description != null && repo.description!.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                repo.description!,
                style: Theme.of(context).textTheme.bodyMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
            const SizedBox(height: 12),
            Row(
              children: [
                Icon(Icons.star, size: 16, color: Colors.amber.shade600),
                const SizedBox(width: 4),
                Text('${repo.stargazersCount}'),
                const SizedBox(width: 16),
                if (repo.language != null) ...[
                  Icon(Icons.circle, size: 12, color: Colors.blue.shade600),
                  const SizedBox(width: 4),
                  Text(repo.language!),
                  const SizedBox(width: 16),
                ],
                const Spacer(),
                Text(
                  'Updated ${DateFormat.yMMMd().format(repo.updatedAt)}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
