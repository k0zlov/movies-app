import 'package:flutter/cupertino.dart';
import 'package:movies_app/features/auth/view/widgets/auth_text_field_suffix.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField({
    super.key,
    required this.title,
    required this.onChanged,
    required this.text,
    this.obscure = false,
    this.message = '',
    this.suffixState = AuthTextFieldSuffixState.empty,
  });

  final String text;
  final void Function(String text) onChanged;

  final String message;
  final AuthTextFieldSuffixState suffixState;

  final String title;
  final bool obscure;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool _expand = true;
  bool _hover = false;

  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  bool get _shouldExpand => !_hover && _expand;

  @override
  void initState() {
    _controller
      ..text = widget.text
      ..addListener(_refreshExpand);
    _focusNode.addListener(_refreshExpand);

    super.initState();

    _refreshExpand();
  }

  @override
  void dispose() {
    _controller.removeListener(_refreshExpand);
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

  void _refreshExpand() {
    final bool shouldExpand = !_focusNode.hasFocus && widget.text.isEmpty;

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
              onChanged: widget.onChanged,
              obscureText: widget.obscure,
              suffix: widget.suffixState.isEmpty
                  ? const SizedBox()
                  : AuthTextFieldSuffix(
                      state: widget.suffixState,
                      message: widget.message,
                    ),
              placeholderStyle: textStyle.copyWith(
                color: CupertinoColors.black.withOpacity(0.65),
              ),
              padding: const EdgeInsets.only(top: 16, left: 10),
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
