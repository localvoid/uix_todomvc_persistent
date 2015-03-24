// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-03-24T08:24:48.971Z

part of uix_todomvc_persistent.src.ui.component.entry;

// **************************************************************************
// Generator: UixGenerator
// Target: class Entry
// **************************************************************************

Entry createEntry([PMap data, Component parent]) {
  return new Entry()
    ..parent = parent
    ..data = data
    ..init();
}
VNode vEntry({PMap data, Object key, String type, Map<String, String> attrs,
    Map<String, String> style, List<String> classes,
    List<VNode> children}) => new VNode.component(createEntry,
    flags: VNode.componentFlag | VNode.immutableDataFlag | VNode.dirtyCheckFlag,
    key: key,
    data: data,
    type: type,
    attrs: attrs,
    style: style,
    classes: classes,
    children: children);
