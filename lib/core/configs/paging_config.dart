class PagingConfig {
  PagingConfig._();
  static const int defaultPageNumber = 1;
  static const int pageSize = 10;
  static const int initialLoadSize = defaultPageNumber * pageSize;
}
