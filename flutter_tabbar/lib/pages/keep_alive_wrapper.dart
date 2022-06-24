import 'package:flutter/cupertino.dart';

class KeepAliveWrapper extends StatefulWidget {
  final bool keepAlive;
  final Widget child;
  const KeepAliveWrapper(
      {Key? key, this.keepAlive = true, required this.child});

  @override
  State<StatefulWidget> createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  void didUpdateWidget(covariant KeepAliveWrapper oldWidget) {
    if (oldWidget.keepAlive != widget.keepAlive) {
      updateKeepAlive();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => widget.keepAlive;
}
