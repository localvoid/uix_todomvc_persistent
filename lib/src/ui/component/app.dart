library uix_todomvc_persistent.src.ui.component.app;

import 'package:uix/uix.dart';
import '../../env.dart';
import '../../store.dart';
import 'header.dart';
import 'main.dart';
import 'footer.dart';

class App extends Component {
  final String tag = 'section';

  init() {
    addSubscription(entryStore.onChange.listen(invalidate));
    addSubscription(showStore.onChange.listen(invalidate));
  }

  updateView() {
    final show = showStore.value;
    final shownTodos = entryStore.entries.values.where((e) {
      switch (show) {
        case ShowType.active:
          return !e.get('completed');
        case ShowType.completed:
          return e.get('completed');
        default:
          return true;
      }
    }).toList();

    final activeCount = entryStore.entries.values.fold(0, (acc, e) {
      return e.get('completed') ? acc : acc + 1;
    });

    final completedCount = entryStore.entries.length - activeCount;

    final children = [vComponent($Header, key: #header)];

    if (shownTodos.isNotEmpty) {
      children.add(vComponent($Main, key: #main,
                         data: new MainProps(
                             shownTodos: shownTodos,
                             activeCount: activeCount)));
    }
    if (activeCount > 0 || completedCount > 0) {
      children.add(vComponent($Footer, key: #footer,
          data: new FooterProps(
              activeCount: activeCount,
              completedCount: completedCount,
              show: show)));
    }

    updateRoot(vRoot(attrs: const {Attr.id: 'main'})(children));
  }
}
