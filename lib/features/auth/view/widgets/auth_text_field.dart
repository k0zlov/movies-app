import 'package:flutter/cupertino.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField({
    super.key,
    required this.title,
    this.obscure = false,
  });

  final String title;
  final bool obscure;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  String _text = '';
  bool _expand = true;
  bool _hover = false;

  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  bool get _shouldExpand => !_hover && _expand;

  @override
  void initState() {
    _controller.addListener(_controllerListener);
    _focusNode.addListener(_refreshExpand);

    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_controllerListener);
    _focusNode.removeListener(_refreshExpand);

    _controller.dispose();
    _focusNode.dispose();

    super.dispose();
  }

  void _setHover(bool value) {
    if (_hover == value) return;

    _hover = value;
    setState(() {});
  }

  void _controllerListener() {
    _onTextChanged();
    _refreshExpand();
  }

  void _onTextChanged() {
    if (_text == _controller.text) return;

    _text = _controller.text;
    setState(() {});
  }

  void _refreshExpand() {
    final bool shouldExpand = !_focusNode.hasFocus && _text.isEmpty;

    if (_expand == shouldExpand) return;

    _expand = shouldExpand;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          color: CupertinoColors.black.withOpacity(0.95),
        );

    return MouseRegion(
      onHover: (_) => _setHover(true),
      onExit: (_) => _setHover(false),
      child: Stack(
        children: [
          SelectionContainer.disabled(
            child: AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              left: _shouldExpand ? 11 : 6,
              top: _shouldExpand ? 11 : 4,
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                style: textStyle.copyWith(
                  fontSize: _shouldExpand ? 17 : 13,
                  color: CupertinoColors.black.withOpacity(0.65),
                ),
                child: Text(
                  widget.title,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 46,
            width: 400,
            child: CupertinoTextField(
              style: textStyle,
              controller: _controller,
              focusNode: _focusNode,
              obscureText: widget.obscure,
              placeholderStyle: textStyle.copyWith(
                color: CupertinoColors.black.withOpacity(0.65),
              ),
              padding: const EdgeInsets.only(top: 18, left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.fromBorderSide(
                  BorderSide(
                    color: CupertinoColors.activeBlue.withOpacity(0.6),
                    width: _focusNode.hasFocus ? 1 : 0.6,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
