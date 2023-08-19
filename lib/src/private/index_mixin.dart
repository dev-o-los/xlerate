mixin IndexMixin {
  static int _currentindex = 0;

  int get currentindex => _currentindex;

  void setIndex(int index) {
    _currentindex = index;
  }

  void changePage(int index) {}
}
