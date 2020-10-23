import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:popcorn_mobile/presentation/core/theme/app_colors.dart';
import 'package:popcorn_mobile/presentation/pages/home/widgets/bottom_bar_widget.dart';
import 'package:popcorn_mobile/presentation/shared/hooks/use_curve_animation.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final TickerProvider ticker = useSingleTickerProvider();
    final AnimationController _controller = useAnimationController(
      duration: Duration(seconds: 3),
      vsync: ticker,
    );
    final Animation<double> _animation = useCurve(_controller);
    final ValueNotifier<PageController> _pageController = useState(
      PageController(),
    );
    final ValueNotifier<int> _currentIndex = useState(0);

    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController.value,
          onPageChanged: (index) {
            _currentIndex.value = index;
          },
          children: <Widget>[
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ScaleTransition(
        scale: _animation,
        child: FloatingActionButton(
          backgroundColor: Color(primaryColor),
          child: Icon(
            Icons.tv,
            color: Colors.white,
          ),
          onPressed: () {
            print('GO');
          },
        ),
      ),
      bottomNavigationBar: BottomBarWidget(
        index: _currentIndex.value,
        controller: _controller,
        onTap: (int index) {
          _currentIndex.value = index;
          _pageController.value.jumpToPage(index);
        },
      ),
    );
  }
}
