library uix_todomvc_persistent.src.ui.component.header;

import 'dart:html' as html;
import 'package:uix/uix.dart';
import 'package:uix_forms/uix_forms.dart';
import '../../env.dart';

$Header() => new Header();
class Header extends Component {
  final String tag = 'header';
  String _input = '';

  init() {
    element
      ..onKeyDown
        .matches('#new-todo')
        .where((e) => e.keyCode == html.KeyCode.ENTER)
        .listen(_submit)

      ..onInput
        .matches('#new-todo')
        .listen(_updateInput);
  }

  void _submit(html.KeyboardEvent e) {
    e.preventDefault();
    entryStore.add(_input);
    _input = '';
    invalidate();
  }

  void _updateInput(html.Event e) {
    _input = (e.target as html.InputElement).value;
  }

  updateView() {
    updateRoot(vRoot()([
      vElement('h1')('todos'),
      vComponent($TextInput,
          data: _input,
          attrs: const {
            Attr.id: 'new-todo',
            Attr.type: 'text',
            Attr.placeholder: 'What needs to be done',
            Attr.autofocus: true
          })
    ]));
  }
}
