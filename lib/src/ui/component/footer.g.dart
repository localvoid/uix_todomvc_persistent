// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-03-28T11:26:37.015Z

part of uix_todomvc_persistent.src.ui.component.footer;

// **************************************************************************
// Generator: UixGenerator
// Target: class Footer
// **************************************************************************

Footer createFooter(
    [FooterProps data, List<VNode> children, Component parent]) {
  return new Footer()
    ..parent = parent
    ..data = data
    ..children = children;
}
VNode vFooter({FooterProps data, Object key, String type,
    Map<String, String> attrs, Map<String, String> style, List<String> classes,
    List<VNode> children}) => new VNode.component(createFooter,
    flags: VNode.componentFlag,
    key: key,
    data: data,
    type: type,
    attrs: attrs,
    style: style,
    classes: classes,
    children: children);
