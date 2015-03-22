// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-03-22T09:26:05.500Z

part of uix_todomvc_persistent.src.ui.component.entry;

// **************************************************************************
// Generator: UixGenerator
// Target: class Entry
// **************************************************************************

Entry createEntry([PMap data]) {
  final r = new Entry()..data = data;
  r.init();
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
