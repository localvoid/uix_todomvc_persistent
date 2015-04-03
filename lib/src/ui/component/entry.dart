library uix_todomvc_persistent.src.ui.component.entry;

import 'dart:html' as html;
import 'package:vacuum_persistent/persistent.dart';
import 'package:uix/uix.dart';
import 'package:uix/forms.dart';
import '../../env.dart';
import '../immutable_data_mixin.dart';

part 'entry.g.dart';

@ComponentMeta()
class Entry extends Component<PMap> with ImmutableDataMixin<PMap> {
  String get tag => 'li';

  bool _editing = false;
  String _editingTitle = null;
  VNode _input;

  init() {
    element
      ..onKeyDown.matches('.edit')
        .where((e) => e.keyCode == html.KeyCode.ENTER ||
                      e.keyCode == html.KeyCode.ESC)
        .listen(_inputKeyDown)

      ..onInput.matches('.edit')
        .listen(_inputChange)

      ..onDoubleClick.matches('label')
        .listen(_startEdit)

      ..onClick.matches('.destroy')
        .listen(_destroy)

      ..onChange.matches('.toggle')
        .listen(_toggle);

    element.onBlur.capture(_handleBlur);
  }

  void _inputKeyDown(html.KeyboardEvent e) {
    e.preventDefault();
    if (e.keyCode == html.KeyCode.ENTER){
      entryStore.updateTitle(data.get('id'), _editingTitle);
    }
    _editing = false;
    _editingTitle = null;
    invalidate();
  }

  void _inputChange(html.Event e) {
    _editingTitle = (e.matchingTarget as html.InputElement).value;
  }

  void _startEdit(_) {
    _editing = true;
    _editingTitle = data.get('title');
    invalidate();
    scheduler.nextFrame.after().then((_) {
      (_input.ref as html.TextInputElement).focus();
    });
  }

  void _destroy(_) {
    entryStore.remove(data.get('id'));
  }

  void _toggle(_) {
    entryStore.toggle(data.get('id'));
  }

  void _handleBlur(html.FocusEvent e) {
    if ((e.target as html.Element).matches('.edit')) {
      if (_editing) {
        entryStore.updateTitle(data.get('id'), _editingTitle);
        _editing = false;
        _editingTitle = null;
        invalidate();
      }
    }
  }

  updateView() {
    final bool completed = data.get('completed');

    final view = vElement('div', type: 'view')([
      vComponent($CheckedInput, type: 'toggle', data: completed, attrs: const {'type': 'checkbox'}),
      vElement('label')(data.get('title')),
      vElement('button', type: 'destroy')
    ]);

    final children = [view];
    if (_editing) {
      _input = vComponent($TextInput, type: 'edit', data: _editingTitle, attrs: const {'type': 'text'});
      children.add(_input);
    } else {
      _input = null;
    }

    final classes = [];
    if (_editing) classes.add('editing');
    if (completed) classes.add('completed');

    updateRoot(vRoot(classes: classes)(children));
  }
}
