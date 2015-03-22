library uix_todomvc_persistent.src.ui.component.footer;

import 'package:uix/uix.dart';
import '../../env.dart';
import '../../utils.dart';
import '../../store.dart';

part 'footer.g.dart';

@ShallowEqOperator()
class FooterProps {
  final int activeCount;
  final int completedCount;
  final ShowType show;

  FooterProps({this.activeCount, this.completedCount, this.show});
}

@ComponentMeta()
class Footer extends Component<FooterProps> {
  String get tag => 'footer';

  init() {
    element.onClick.matches('#clear-completed').listen((e) {
      e.preventDefault();
      entryStore.clearCompleted();
    });
  }

  updateView() {
    const selected = const ['selected'];
    final showEntries = data.show;

    final filters = vElement('ul', attrs: const {'id': 'filters'})([
        vElement('li')(
          vElement('a', attrs: const {'href': '#/'},
             classes: showEntries == ShowType.all ? selected : null)('All')),
        vText(' '),
        vElement('li')(
          vElement('a', attrs: const {'href': '#/active'},
             classes: showEntries == ShowType.active ? selected : null)('Active')),
        vText(' '),
        vElement('li')(
          vElement('a', attrs: const {'href': '#/completed'},
             classes: showEntries == ShowType.completed ? selected : null)('Completed'))
    ]);

    final counter = vElement('span', attrs: const {'id': 'todo-count'})([
        vElement('strong')(data.activeCount.toString()),
        vText(' ${pluralize(data.activeCount, 'item')} left')
    ]);

    final children = [counter, filters];
    if (data.completedCount > 0) {
      children.add(
          vElement('button', attrs: const {'id': 'clear-completed'})('Clear completed (${data.completedCount})')
      );
    }

    updateRoot(vRoot(attrs: const {'id': 'footer'})(children));
  }
}
