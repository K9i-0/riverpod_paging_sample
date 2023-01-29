import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_paging_sample/example/settings/settings_state.dart';

final settingsNotifierProvider =
    NotifierProvider<SettingsNotifier, SettingsState>(
  () => SettingsNotifier(),
);

class SettingsNotifier extends Notifier<SettingsState> {
  @override
  SettingsState build() {
    return const SettingsState(
      forceFirstPageError: false,
      forceNextPageError: false,
    );
  }

  void toggleForceFirstPageError() {
    state = state.copyWith(
      forceFirstPageError: !state.forceFirstPageError,
    );
  }

  void toggleForceNextPageError() {
    state = state.copyWith(
      forceNextPageError: !state.forceNextPageError,
    );
  }
}
