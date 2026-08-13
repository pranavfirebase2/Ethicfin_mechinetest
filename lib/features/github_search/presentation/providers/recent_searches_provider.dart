import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'providers.dart';

class RecentSearchesNotifier extends Notifier<List<String>> {
  static const _key = 'recent_searches';

  @override
  List<String> build() {
    final prefs = ref.read(sharedPreferencesProvider);
    return prefs.getStringList(_key) ?? [];
  }

  void addSearch(String username) {
    if (username.trim().isEmpty) return;
    
    final currentList = List<String>.from(state);
    
    currentList.remove(username);
    currentList.insert(0, username);
    
    if (currentList.length > 5) {
      currentList.removeLast();
    }
    
    state = currentList;
    final prefs = ref.read(sharedPreferencesProvider);
    prefs.setStringList(_key, currentList);
  }
}

final recentSearchesProvider = NotifierProvider<RecentSearchesNotifier, List<String>>(() {
  return RecentSearchesNotifier();
});
