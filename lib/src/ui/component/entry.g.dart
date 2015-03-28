// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-03-28T11:26:36.903Z

part of uix_todomvc_persistent.src.ui.component.entry;

// **************************************************************************
// Generator: UixGenerator
// Target: class Entry
// **************************************************************************

Entry createEntry([PMap data, List<VNode> children, Component parent]) {
  return new Entry()
    ..parent = parent
    ..data = data
    ..children = children;
}
VNode vEntry({PMap data, Object key, String type, Map<String, String> attrs,
    Map<String, String> style, List<String> classes,
    List<VNode> children}) => new VNode.component(createEntry,
    flags: VNode.componentFlag,
    key: key,
    data: data,
    type: type,
    attrs: attrs,
    style: style,
    classes: classes,
    children: children);
