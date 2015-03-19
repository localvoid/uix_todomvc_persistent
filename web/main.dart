import 'dart:html' as html;
import 'package:route_hierarchical/client.dart';
import 'package:uix/uix.dart';

import 'package:uix_todomvc_persistent/src/env.dart';
import 'package:uix_todomvc_persistent/src/store.dart' as store;
import 'package:uix_todomvc_persistent/src/ui/component/app.dart' as ui;

void initRouter() {
  final router = new Router(useFragment: true);
  router.root
    ..addRoute(name: 'showCompleted', path: '/completed', enter: (_) {
      showStore.value = store.ShowType.completed;
    })
    ..addRoute(name: 'showActive', path: '/active', enter: (_) {
      showStore.value = store.ShowType.active;
    })
    ..addRoute(name: 'showAll', path: '/', defaultRoute: true, enter: (_) {
      showStore.value = store.ShowType.all;
    });
  router.listen();
}

main() {
  initUix();

  initEnv();
  initRouter();

  scheduler.nextFrame.write().then((_) {
    injectComponent(ui.createApp(), html.querySelector('#todoapp'));
  });
}
