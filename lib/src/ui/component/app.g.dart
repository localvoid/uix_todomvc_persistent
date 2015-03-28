// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-03-28T11:26:36.927Z

part of uix_todomvc_persistent.src.ui.component.app;

// **************************************************************************
// Generator: UixGenerator
// Target: class App
// **************************************************************************

App createApp([dynamic data, List<VNode> children, Component parent]) {
  return new App()
    ..parent = parent
    ..data = data
    ..children = children;
}
VNode vApp({dynamic data, Object key, String type, Map<String, String> attrs,
    Map<String, String> style, List<String> classes,
    List<VNode> children}) => new VNode.component(createApp,
    flags: VNode.componentFlag,
    key: key,
    data: data,
    type: type,
    attrs: attrs,
    style: style,
    classes: classes,
    children: children);
