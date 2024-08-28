import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum AuthTextFieldSuffixState {
  empty,
  error,
  loading,
  success;

  bool get isEmpty => this == empty;

  bool get isError => this == error;

  bool get isLoading => this == loading;

  bool get isSuccess => this == success;
}

class AuthTextFieldSuffix extends StatelessWidget {
  const AuthTextFieldSuffix({
    super.key,
    required this.message,
    required this.state,
  });

  final AuthTextFieldSuffixState state;

  final String message;

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          color: CupertinoColors.white,
          fontSize: 16,
        );

    return Tooltip(
      message: state.isLoading ? '' : message,
      textStyle: textStyle,
      height: 30,
      verticalOffset: 10,
      decoration: BoxDecoration(
        color: CupertinoColors.darkBackgroundGray.withOpacity(0.8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: switch (state) {
          AuthTextFieldSuffixState.empty => const SizedBox.shrink(),
          AuthTextFieldSuffixState.loading => const _LoadingIndicator(),
          AuthTextFieldSuffixState.success => const Icon(
              CupertinoIcons.check_mark_circled_solid,
              color: CupertinoColors.systemGreen,
            ),
          AuthTextFieldSuffixState.error => const Icon(
              CupertinoIcons.exclamationmark_triangle_fill,
            ),
        },
      ),
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 15,
      width: 15,
      child: CircularProgressIndicator(
        strokeWidth: 5,
        color: CupertinoColors.inactiveGray,
      ),
    );
  }
}
