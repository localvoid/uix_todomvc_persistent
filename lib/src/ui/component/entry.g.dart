// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-03-19T07:32:16.433Z

part of uix_todomvc_persistent.src.ui.component.entry;

// **************************************************************************
// Generator: UixGenerator
// Target: class Entry
// **************************************************************************

Entry createEntry([PMap data]) {
  final r = new Entry()..data = data;
  return r;
}
VNode vEntry({PMap data, Object key, String type, Map<String, String> attrs,
    Map<String, String> style, List<String> classes,
    List<VNode> children}) => new VNode.component(createEntry,
    flags: VNode.componentFlag | VNode.dirtyCheckFlag,
    key: key,
    data: data,
    type: type,
    attrs: attrs,
    style: style,
    classes: classes,
    children: children);
