import 'package:flutter/material.dart';

class ScaffoldDashboard extends StatelessWidget {
  final Widget? leadingWidget;
  final List<Widget>? appBarActions;
  final bool? isLoading;
  final Widget? pageTitle;
  //final String? pageSubtitle;
  final Widget bodyWidget;
  final Widget? bottomNavigationBar;
  final BoxDecoration? scaffoldDecoration;
  final TextStyle? appBarTextStyle;
  final Color? backgroundColour;
  const ScaffoldDashboard({
    super.key,
    this.appBarActions,
    this.isLoading,
    required this.pageTitle,
    //this.pageSubtitle,
    required this.bodyWidget,
    this.bottomNavigationBar,
    this.scaffoldDecoration,
    this.appBarTextStyle,
    this.leadingWidget,
    this.backgroundColour,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: leadingWidget,
        title: pageTitle,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: Colors.white,
          )
        ],
      ),
      body: bodyWidget,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
