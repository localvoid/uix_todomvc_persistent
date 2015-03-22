// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-03-22T11:16:50.978Z

part of uix_todomvc_persistent.src.ui.component.app;

// **************************************************************************
// Generator: UixGenerator
// Target: class App
// **************************************************************************

App createApp([dynamic data, Component parent]) {
  final r = new App()
    ..parent = parent
    ..data = data;
  r.init();
  return r;
}
VNode vApp({dynamic data, Object key, String type, Map<String, String> attrs,
    Map<String, String> style, List<String> classes,
    List<VNode> children}) => new VNode.component(createApp,
    flags: VNode.componentFlag | VNode.dirtyCheckFlag,
    key: key,
    data: data,
    type: type,
    attrs: attrs,
    style: style,
    classes: classes,
    children: children);
