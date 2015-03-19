library uix_todomvc_persistent.src.store;

import 'dart:async';
import 'package:vacuum_persistent/persistent.dart';

abstract class ObservableNode {
  bool _notifying = false;
  StreamController _onChangeController;
  Stream get onChange {
    if (_onChangeController == null) {
      _onChangeController = new StreamController.broadcast();
    }
    return _onChangeController.stream;
  }

  void notify() {
    if (_onChangeController != null && _onChangeController.hasListener) {
      if (!_notifying) {
        _notifying = true;
        scheduleMicrotask(_notifyFinish);
      }
    }
  }

  void _notifyFinish() {
    _notifying = false;
    _onChangeController.add(null);
  }
}

class EntryStore extends ObservableNode {
  static int _nextId = 0;

  PMap<int, PMap> _entries = new PMap<int, PMap>();
  PMap<int, PMap> get entries => _entries;

  PMap _createEntry(String title) {
    assert(title.isNotEmpty);
    return new PMap.from({
      'id': _nextId++,
      'title': title,
      'completed': false
    });
  }

  void add(String title) {
    title = title.trim();
    if (title.isNotEmpty) {
      final e = _createEntry(title);
      _entries = _entries.assoc(e.get('id'), e);
    }
    notify();
  }

  void remove(int id) {
    _entries = _entries.delete(id);
    notify();
  }

  void updateTitle(int id, String newTitle) {
    newTitle = newTitle.trim();
    if (newTitle.isEmpty) {
      remove(id);
    } else {
      _entries = _entries.update(id, (e) => e.assoc('title', newTitle));
    }
    notify();
  }

  void toggleAll(bool checked) {
    final tmp = _entries.asTransient();

    _entries.values.forEach((e) {
      tmp.doAssoc(e.get('id'), e.assoc('completed', checked));
    });

    _entries = tmp.asPersistent();
    notify();
  }

  void toggle(int id) {
    _entries = _entries.update(id, (e) => e.update('completed', (v) => !v));
    notify();
  }

  void clearCompleted() {
    final tmp = _entries.asTransient();

    _entries.values.forEach((e) {
      if (e.get('completed')) {
        tmp.doDelete(e.get('id'));
      }
    });

    _entries = tmp.asPersistent();
    notify();
  }
}

enum ShowType {
  all,
  active,
  completed
}

class ShowStore extends ObservableNode {
  ShowType _value = ShowType.all;
  ShowType get value => _value;
  set value(ShowType v) {
    _value = v;
    notify();
  }
}
