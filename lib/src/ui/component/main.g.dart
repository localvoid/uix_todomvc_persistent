// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-03-24T08:24:48.923Z

part of uix_todomvc_persistent.src.ui.component.main;

// **************************************************************************
// Generator: UixGenerator
// Target: class MainProps
// **************************************************************************

abstract class _MainPropsShallowEqOperator {
  List get shownTodos;
  int get activeCount;
  bool operator ==(MainProps other) => (identical(this, other) ||
      ((super == other) &&
          (shownTodos == other.shownTodos) &&
          (activeCount == other.activeCount)));
}

// **************************************************************************
// Generator: UixGenerator
// Target: class Main
// **************************************************************************

Main createMain([MainProps data, Component parent]) {
  return new Main()
    ..parent = parent
    ..data = data
    ..init();
}
VNode vMain({MainProps data, Object key, String type, Map<String, String> attrs,
    Map<String, String> style, List<String> classes,
    List<VNode> children}) => new VNode.component(createMain,
    flags: VNode.componentFlag | VNode.dirtyCheckFlag,
    key: key,
    data: data,
    type: type,
    attrs: attrs,
    style: style,
    classes: classes,
    children: children);
