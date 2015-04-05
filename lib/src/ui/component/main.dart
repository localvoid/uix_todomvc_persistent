library uix_todomvc_persistent.src.ui.component.main;

import 'package:vacuum_persistent/persistent.dart';
import 'package:uix/uix.dart';
import 'package:uix/forms.dart';
import '../../env.dart';
import 'entry_list.dart';

class MainProps {
  final List<PMap> shownTodos;
  final int activeCount;

  MainProps({this.shownTodos, this.activeCount});
}

$Main() => new Main();
class Main extends Component<MainProps> {
  String get tag => 'section';

  init() {
    element.onChange.matches('#toggle-all').listen(_toggleAll);
  }

  void _toggleAll(e) {
    entryStore.toggleAll(!(data.activeCount == 0));
  }

  updateView() {
    updateRoot(vRoot(attrs: const {'id': 'main'})([
      vComponent($CheckedInput, data: (data.activeCount == 0), attrs: {'type': 'checkbox', 'id': 'toggle-all'}),
      vComponent($EntryList, data: data.shownTodos)
    ]));
  }
}
