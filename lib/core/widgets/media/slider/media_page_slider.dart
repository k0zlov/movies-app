import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/media/screen_headers/main_info_header/main_info_header.dart';
import 'package:movies_app/core/widgets/media/slider/media_page_slide.dart';
import 'package:movies_app/core/widgets/media/slider/media_slider_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MediaPageSlider extends StatefulWidget {
  const MediaPageSlider({
    super.key,
    required this.data,
  });

  final List<MainMediaInfoHeaderData> data;

  @override
  State<MediaPageSlider> createState() => _MediaPageSliderState();
}

class _MediaPageSliderState extends State<MediaPageSlider> {
  final Duration _duration = const Duration(milliseconds: 220);
  final Curve _curve = Curves.easeInOut;
  final _controller = PageController();

  void _previousPage() {
    if (_controller.page == 0) {
      _controller.animateToPage(
        widget.data.length - 1,
        duration: _duration,
        curve: _curve,
      );
      return;
    }

    _controller.previousPage(
      duration: _duration,
      curve: Curves.easeInOut,
    );
  }

  void _nextPage() {
    if (_controller.page == widget.data.length - 1) {
      _controller.animateToPage(
        0,
        duration: _duration,
        curve: _curve,
      );
      return;
    }
    _controller.nextPage(
      duration: _duration,
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 300, maxHeight: 850),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: PageView.builder(
              controller: _controller,
              itemCount: widget.data.length,
              itemBuilder: (context, index) {
                return MediaPageSlide(data: widget.data[index]);
              },
            ),
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MediaSliderButton(
                previous: true,
                onPressed: _previousPage,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: widget.data.length,
                effect: ExpandingDotsEffect(
                  dotHeight: 10,
                  dotColor: CupertinoColors.systemGrey.withOpacity(0.4),
                  activeDotColor: CupertinoColors.systemGrey,
                ),
              ),
              MediaSliderButton(
                previous: false,
                onPressed: _nextPage,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
