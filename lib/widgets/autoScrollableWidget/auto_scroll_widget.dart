import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:tradeful_app/utils/dimensions.dart';
import '../app_column.dart';

class AutoScrollingListView extends StatefulWidget {
  final List<TradesPerson> tradesPeople;

  AutoScrollingListView({Key? key, required this.tradesPeople}) : super(key: key);

  @override
  _AutoScrollingListViewState createState() => _AutoScrollingListViewState();
}

class _AutoScrollingListViewState extends State<AutoScrollingListView> {
  late ScrollController _scrollController;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _startAutoScroll();
  }

void _startAutoScroll() {
  _timer = Timer.periodic(Duration(seconds: 8), (timer) { // Changed interval to 10 seconds
    if (_scrollController.hasClients) {
      if (_scrollController.offset >= _scrollController.position.maxScrollExtent) {
        _scrollController.animateTo(_scrollController.position.minScrollExtent,
            duration: Duration(seconds: 8), curve: Curves.easeInOut);
      } else {
        _scrollController.animateTo(_scrollController.position.maxScrollExtent,
            duration: Duration(seconds: 8), curve: Curves.easeInOut); 
      }
    }
  });
}

  @override
  void dispose() {
    _scrollController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: Dimensions.height15),
      controller: _scrollController,
      itemCount: widget.tradesPeople.length,
      itemBuilder: (context, index) {
        TradesPerson tradesPerson = widget.tradesPeople[index];
        return AppColumn(
          name: tradesPerson.name,
          profileImage: tradesPerson.image,
          rating: tradesPerson.rating,
          location: tradesPerson.location,
          numComments: tradesPerson.numComments,
          tradeType: tradesPerson.tradeType,
        );
      },
    );
  }
}

// Tradesperson data structure

class TradesPerson {
  final String name;
  final String image;
  final String rating;
  final String location;
  final String numComments;
  final String tradeType;

  TradesPerson(this.name, this.image, this.rating, this.location,
      this.numComments, this.tradeType);
}
