library uix_todomvc_persistent.src.env;

import 'store.dart';

EntryStore entryStore;
ShowStore showStore;

void initEnv() {
  entryStore = new EntryStore();
  showStore = new ShowStore();
}
