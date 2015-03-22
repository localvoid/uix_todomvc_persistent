library uix_todomvc_persistent.src.ui.component.entry_list;

import 'package:vacuum_persistent/persistent.dart';
import 'package:uix/uix.dart';
import 'entry.dart';

part 'entry_list.g.dart';

@ComponentMeta()
class EntryList extends Component<List<PMap>> {
  String get tag => 'ul';

  updateView() {
    updateRoot(vRoot(attrs: const {'id': 'todo-list'})(
        data.map((e) => vEntry(key: e.get('id'), data: e))
    ));
  }
}
