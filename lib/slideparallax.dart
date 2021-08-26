library slideparallax;

import 'package:flutter/material.dart';

class SlideParallax extends StatefulWidget {
  ///height of slideparallax container
  ///
  final double height;

  ///width of slideparallax container
  ///
  final double width;

  ///spacing from header to content, default value is 2.5 of MediaQuery.of(context).size.width
  ///
  final double? headerSpacing;

  ///trigger will called animation header, default value is 50
  ///
  final double trigger;

  ///header widget
  ///
  final Widget header;

  ///footer widget
  ///
  final Widget? footer;

  ///creates a scrollable, linear array of widgets that are created on demand.
  ///
  final Widget Function(BuildContext, int) itemBuilder;

  ///This constructor is appropriate for list views with a large (or infinite) number of
  ///children because the builder is called only for those children that are actually visible.
  ///
  final int itemCount;

  const SlideParallax(
      {Key? key,
      required this.height,
      required this.width,
      this.headerSpacing,
      this.trigger = 50,
      required this.header,
      required this.itemBuilder,
      required this.itemCount,
      this.footer})
      : super(key: key);

  @override
  _SlideParallaxState createState() => _SlideParallaxState();
}

class _SlideParallaxState extends State<SlideParallax> {
  ScrollController controller = ScrollController();

  double currentTrigger = 0;

  @override
  void initState() {
    currentTrigger = widget.trigger;
    if (mounted) {
      controller.addListener(() {
        if (controller.position.pixels >= widget.trigger) {
          if (currentTrigger != 0) {
            setState(() {
              if (currentTrigger >= 1) currentTrigger = 0;
            });
          }
        } else if (controller.position.pixels <= widget.trigger) {
          if (currentTrigger == 0) {
            setState(() {
              currentTrigger = widget.trigger;
            });
          }
        }
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: Stack(
        children: [
          AnimatedPositioned(
            left: currentTrigger == widget.trigger ? 0 : widget.trigger * -1,
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            child: AnimatedOpacity(
                opacity: currentTrigger == widget.trigger ? 1 : 0.5,
                duration: const Duration(milliseconds: 500),
                child: SizedBox(child: widget.header)),
          ),
          ScrollConfiguration(
              behavior: MyBehavior(),
              child: CustomScrollView(
                controller: controller,
                physics: PageScrollPhysics(),
                scrollDirection: Axis.horizontal,
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: SizedBox(
                        width: widget.headerSpacing == null
                            ? MediaQuery.of(context).size.width / 2.5
                            : widget.headerSpacing,
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(widget.itemBuilder,
                        childCount: widget.itemCount),
                  ),
                  SliverToBoxAdapter(child: widget.footer ?? SizedBox()),
                ],
              )),
        ],
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
