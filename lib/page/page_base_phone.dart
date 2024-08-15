// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/app_colors.dart';
import 'package:ticket_app/ui/global_widget/app_box.dart';

class PageBasePhone extends StatelessWidget {
  final Widget bodySliver;
  final Widget footerSliver;
  final Widget headerWidget;
  final bool showNavbar;

  final Widget floatingWidget;
  final double heightExpand;
  final double maxEntend;
  final double minEntend;
  final void Function()? onReachedBottom;

  const PageBasePhone({
    super.key,
    required this.bodySliver,
    this.floatingWidget = const SizedBox.shrink(),
    this.footerSliver = const SizedBox.shrink(),
    this.headerWidget = const SizedBox.shrink(),
    this.heightExpand = 200,
    this.maxEntend = 90,
    this.minEntend = 90,
    this.onReachedBottom,
    this.showNavbar = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                CustomScrollView(
                  slivers: <Widget>[
                    // Header
                    SliverPersistentHeader(
                      delegate: MySliverHeaderDelegate(
                        expandedHeight: heightExpand,
                        widgetHeader: headerWidget,
                        maxExtend: maxEntend,
                        minExtend: minEntend,
                      ),
                      pinned: true,
                      // floating: false,
                    ),
                    // Body
                    SliverToBoxAdapter(
                      child: AppBox.h20,
                    ),
                    SliverPadding(padding: const EdgeInsets.symmetric(horizontal: 15), sliver: bodySliver),
                    SliverToBoxAdapter(
                      child: AppBox.h10,
                    ),
                    // Footer
                    SliverFillRemaining(
                      hasScrollBody: false, // el contenido ocupa todo el espacio que sliverList ocupa
                      fillOverscroll: false,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: footerSliver,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: floatingWidget,
                ),
              ],
            ),
          ),
          Visibility(
            visible: showNavbar,
            child: Container(height: 70, alignment: Alignment.center, child: Text("data")),
          ),
        ],
      ),
    );
  }
}

class PageBasePhoneBeta extends StatelessWidget {
  final List<Widget> bodySliver;
  final Widget footerSliver;
  final Widget headerWidget;
  final bool showNavbar;

  final Widget floatingWidget;
  final double heightExpand;
  final double maxEntend;
  final double minEntend;
  final void Function()? onReachedBottom;

  const PageBasePhoneBeta({
    super.key,
    required this.bodySliver,
    this.floatingWidget = const SizedBox.shrink(),
    this.footerSliver = const SizedBox.shrink(),
    this.headerWidget = const SizedBox.shrink(),
    this.heightExpand = 200,
    this.maxEntend = 90,
    this.minEntend = 90,
    this.onReachedBottom,
    this.showNavbar = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                CustomScrollView(
                  slivers: <Widget>[
                    // Header
                    SliverPersistentHeader(
                      delegate: MySliverHeaderDelegate(
                        expandedHeight: heightExpand,
                        widgetHeader: headerWidget,
                        maxExtend: maxEntend,
                        minExtend: minEntend,
                      ),
                      pinned: true,
                      // floating: false,
                    ),
                    // Body
                    ...bodySliver.map((e) {
                      if (e is SliverAppBar) {
                        return e;
                      }
                      return SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        sliver: e,
                      );
                    }),

                    SliverToBoxAdapter(
                      child: AppBox.h10,
                    ),
                    // Footer
                    SliverFillRemaining(
                      hasScrollBody: false, // el contenido ocupa todo el espacio que sliverList ocupa
                      fillOverscroll: false,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: footerSliver,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: floatingWidget,
                ),
              ],
            ),
          ),
          Visibility(
            visible: showNavbar,
            child: Container(height: 70, alignment: Alignment.center, child: Text("sd")),
          ),
        ],
      ),
    );
  }
}

class MySliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget widgetHeader;
  final Widget widgetHeaderBody;
  final double expandedHeight;
  final double maxExtend;
  final double minExtend;

  MySliverHeaderDelegate({
    required this.expandedHeight,
    this.widgetHeader = const SizedBox.shrink(),
    this.widgetHeaderBody = const SizedBox.shrink(),
    required this.maxExtend,
    required this.minExtend,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // final percent = (1 - shrinkOffset / _maxExtend);
    return Stack(
      fit: StackFit.expand,
      children: [
        // Image.network(
        //   "https://via.placeholder.com/350x150",
        //   fit: BoxFit.cover,
        // ),

        //  final navbarCubit = context.read<NavigatorCubit>();
        //   navbarCubit.updateIndexDelay(1);

        //   Navigator.pushReplacementNamed(context, Routes.login);
        Container(
          // height: 400,
          // decoration: const BoxDecoration(
          //   gradient: LinearGradient(
          //     colors: [Colors.transparent, Colors.black54],
          //     stops: [0.5, 1.0],
          //     begin: Alignment.topCenter,
          //     end: Alignment.bottomCenter,
          //     tileMode: TileMode.repeated,
          //   ),
          // ),
          child: Column(
            children: [
              Container(
                color: AppColors.white,
                alignment: Alignment.center,
                height: maxExtend,
                child: widgetHeader,
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: shrinkOffset == 0
                    ? Container(
                        alignment: Alignment.center,
                        color: AppColors.lightFillColor,
                        child: widgetHeaderBody,
                      )
                    : const SizedBox.shrink(),
              )
            ],
          ),
        ),
        // Positioned(
        //   bottom: 5.0,
        //   left: 16.0,
        //   child: Text(
        //     "Opciones de titulo",
        //     style: TextStyle(
        //       fontSize: (20 * percent).clamp(12, 40),
        //       color: Colors.deepOrangeAccent,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),
      ],
    );
  }

  @override
  double get maxExtent => maxExtend;

  @override
  double get minExtent => minExtend;

  @override
  bool shouldRebuild(MySliverHeaderDelegate oldDelegate) {
    return expandedHeight != oldDelegate.expandedHeight;
  }
}
