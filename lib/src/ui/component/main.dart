library uix_todomvc_persistent.src.ui.component.main;

import 'package:vacuum_persistent/persistent.dart';
import 'package:uix/uix.dart';
import 'package:uix_forms/uix_forms.dart';
import '../../env.dart';
import 'entry_list.dart';

class MainProps {
  final List<PMap> shownTodos;
  final int activeCount;

  MainProps({this.shownTodos, this.activeCount});
}

$Main() => new Main();
class Main extends Component<MainProps> {
  final String tag = 'section';

  init() {
    element.onChange.matches('#toggle-all').listen(_toggleAll);
  }

  void _toggleAll(e) {
    entryStore.toggleAll(!(data.activeCount == 0));
  }

  updateView() {
    updateRoot(vRoot(attrs: const {Attr.id: 'main'})([
      vComponent($CheckedInput, data: (data.activeCount == 0), attrs: {Attr.type: 'checkbox', Attr.id: 'toggle-all'}),
      vComponent($EntryList, data: data.shownTodos)
    ]));
  }
}
