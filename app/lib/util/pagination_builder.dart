import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

typedef ScrollableWidgetBuilder<T, S extends ScrollController> = Widget
    Function(
  BuildContext,
  S,
  AsyncSnapshot<UnmodifiableListView<T>>,
);

typedef PaginationCallback<T> = Future<(List<T>, bool)> Function(int);

class PaginationBuilder<T> extends StatefulWidget {
  const PaginationBuilder({
    super.key,
    required this.paginationCallback,
    required this.builder,
    this.loadFactor = 0.8,
    this.initialPage = 0,
  });

  final int initialPage;
  final double loadFactor;
  final PaginationCallback<T> paginationCallback;
  final ScrollableWidgetBuilder<T, ScrollController> builder;

  @override
  State<PaginationBuilder<T>> createState() =>
      _PaginationBuilderState<T>();
}

class _PaginationBuilderState<T>
    extends State<PaginationBuilder<T>> {
  final BehaviorSubject<int> _paginationController = BehaviorSubject();
  final ScrollController _scrollController = ScrollController();

  late final Stream<UnmodifiableListView<T>> _dataStream =
      _paginationController.stream.distinct().asyncExpand(_loadData);

  int? _page;

  final List<T> _data = [];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_listenScroll);
    _paginationController.add(_page ??= widget.initialPage);
  }

  void _listenScroll() {
    final extent = _scrollController.position.maxScrollExtent;
    final loadFactor = widget.loadFactor;
    final page = _page;
    if (_scrollController.offset > extent * loadFactor && page != null) {
      _paginationController.add(page);
    }
  }

  Stream<UnmodifiableListView<T>> _loadData(int page) async* {
    final (data, hasNext) = await widget.paginationCallback(page);
    _data.addAll(data);
    _page = hasNext ? page + 1 : null;
    yield UnmodifiableListView(_data);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_listenScroll);
    _scrollController.dispose();
    _paginationController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UnmodifiableListView<T>>(
      stream: _dataStream,
      initialData: UnmodifiableListView(_data),
      builder: (context, snapshot) {
        return widget.builder(
          context,
          _scrollController,
          snapshot,
        );
      },
    );
  }
}


class PagePaginationBuilder<T> extends StatefulWidget {
  const PagePaginationBuilder({
    super.key,
    required this.paginationCallback,
    required this.builder,
    this.loadFactor = 0.8,
    this.initialPage = 0,
  });

  final int initialPage;
  final double loadFactor;
  final PaginationCallback<T> paginationCallback;
  final ScrollableWidgetBuilder<T, PageController> builder;

  @override
  State<PagePaginationBuilder<T>> createState() =>
      _PagePaginationBuilderState<T>();
}

class _PagePaginationBuilderState<T>
    extends State<PagePaginationBuilder<T>> {
  final BehaviorSubject<int> _paginationController = BehaviorSubject();
  final PageController _scrollController = PageController();

  late final Stream<UnmodifiableListView<T>> _dataStream =
      _paginationController.stream.distinct().asyncExpand(_loadData);

  int? _page;

  final List<T> _data = [];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_listenScroll);
    _paginationController.add(_page ??= widget.initialPage);
  }

  void _listenScroll() {
    final extent = _scrollController.position.maxScrollExtent;
    final loadFactor = widget.loadFactor;
    final page = _page;
    if (_scrollController.offset > extent * loadFactor && page != null) {
      _paginationController.add(page);
    }
  }

  Stream<UnmodifiableListView<T>> _loadData(int page) async* {
    final (data, hasNext) = await widget.paginationCallback(page);
    _data.addAll(data);
    _page = hasNext ? page + 1 : null;
    yield UnmodifiableListView(_data);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_listenScroll);
    _scrollController.dispose();
    _paginationController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UnmodifiableListView<T>>(
      stream: _dataStream,
      initialData: UnmodifiableListView(_data),
      builder: (context, snapshot) {
        return widget.builder(
          context,
          _scrollController,
          snapshot,
        );
      },
    );
  }
}
