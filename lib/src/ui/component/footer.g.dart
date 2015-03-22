// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-03-22T11:16:51.014Z

part of uix_todomvc_persistent.src.ui.component.footer;

// **************************************************************************
// Generator: UixGenerator
// Target: class FooterProps
// **************************************************************************

abstract class _FooterPropsShallowEqOperator {
  int get activeCount;
  int get completedCount;
  ShowType get show;
  const _FooterPropsShallowEqOperator();
  bool operator ==(FooterProps other) => (identical(this, other) ||
      ((activeCount == other.activeCount) &&
          (completedCount == other.completedCount) &&
          (show == other.show)));
}

// **************************************************************************
// Generator: UixGenerator
// Target: class Footer
// **************************************************************************

Footer createFooter([FooterProps data, Component parent]) {
  final r = new Footer()
    ..parent = parent
    ..data = data;
  r.init();
  return r;
}
VNode vFooter({FooterProps data, Object key, String type,
    Map<String, String> attrs, Map<String, String> style, List<String> classes,
    List<VNode> children}) => new VNode.component(createFooter,
    flags: VNode.componentFlag | VNode.dirtyCheckFlag,
    key: key,
    data: data,
    type: type,
    attrs: attrs,
    style: style,
    classes: classes,
    children: children);
