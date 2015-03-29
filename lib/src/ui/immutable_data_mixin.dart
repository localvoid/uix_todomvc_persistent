library uix_todomvc_persistent.src.ui.immutable_data_mixin;

abstract class ImmutableDataMixin<T> {
  T get data_;
  set data_(T);
  void invalidate([_]);

  set data(T newData) {
    if (!identical(data_, newData)) {
      data_ = newData;
      invalidate();
    }
  }
}
