// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-03-22T11:16:50.994Z

part of uix_todomvc_persistent.src.ui.component.header;

// **************************************************************************
// Generator: UixGenerator
// Target: class Header
// **************************************************************************

Header createHeader([dynamic data, Component parent]) {
  final r = new Header()
    ..parent = parent
    ..data = data;
  r.init();
  return r;
}
VNode vHeader({dynamic data, Object key, String type, Map<String, String> attrs,
    Map<String, String> style, List<String> classes,
    List<VNode> children}) => new VNode.component(createHeader,
    flags: VNode.componentFlag | VNode.dirtyCheckFlag,
    key: key,
    data: data,
    type: type,
    attrs: attrs,
    style: style,
    classes: classes,
    children: children);
