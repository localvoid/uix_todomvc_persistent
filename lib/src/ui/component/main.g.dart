// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-03-22T09:26:05.485Z

part of uix_todomvc_persistent.src.ui.component.main;

// **************************************************************************
// Generator: UixGenerator
// Target: class MainProps
// **************************************************************************

abstract class _MainPropsShallowEqOperator {
  List get shownTodos;
  int get activeCount;
  const _MainPropsShallowEqOperator();
  bool operator ==(MainProps other) => (identical(this, other) ||
      ((shownTodos == other.shownTodos) && (activeCount == other.activeCount)));
}

// **************************************************************************
// Generator: UixGenerator
// Target: class Main
// **************************************************************************

Main createMain([MainProps data]) {
  final r = new Main()..data = data;
  r.init();
  return r;
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
