import 'package:my_base_code/core/configs/paging_config.dart';

class PagingController<T> {
  List<T> listItems = [];
  int pageNumber = PagingConfig.initialLoadSize;
  bool isLoadingPage = false;
  bool endOfList = false;

  initRefresh() {
    listItems = [];
    pageNumber = PagingConfig.initialLoadSize;
    isLoadingPage = false;
    endOfList = false;
  }

  bool canLoadNextPage() {
    return !isLoadingPage && !endOfList;
  }

  appendPage(List<T> items) {
    listItems.addAll(items);
    pageNumber++;
  }

  appendLastPage(List<T> items) {
    listItems.addAll(items);
    endOfList = true;
  }
}
