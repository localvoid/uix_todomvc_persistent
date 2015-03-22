// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-03-22T09:26:05.523Z

part of uix_todomvc_persistent.src.ui.component.header;

// **************************************************************************
// Generator: UixGenerator
// Target: class Header
// **************************************************************************

Header createHeader([dynamic data]) {
  final r = new Header()..data = data;
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
