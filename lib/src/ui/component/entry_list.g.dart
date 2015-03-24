// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-03-24T08:25:29.547Z

part of uix_todomvc_persistent.src.ui.component.entry_list;

// **************************************************************************
// Generator: UixGenerator
// Target: class EntryList
// **************************************************************************

EntryList createEntryList([List data, Component parent]) {
  return new EntryList()
    ..parent = parent
    ..data = data
    ..init();
}
VNode vEntryList({List data, Object key, String type, Map<String, String> attrs,
    Map<String, String> style, List<String> classes,
    List<VNode> children}) => new VNode.component(createEntryList,
    flags: VNode.componentFlag,
    key: key,
    data: data,
    type: type,
    attrs: attrs,
    style: style,
    classes: classes,
    children: children);
