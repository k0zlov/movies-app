import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/responsive/responsive_mixin.dart';
import 'package:movies_app/features/errors/view/widgets/error_list.dart';

class ErrorScreenWrapper extends StatelessWidget with Responsive<Alignment> {
  const ErrorScreenWrapper({
    super.key,
    required this.child,
  });

  final Widget? child;

  @override
  Alignment get small => Alignment.bottomCenter;

  @override
  Alignment? get medium => Alignment.bottomRight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child ?? const SizedBox(),
        Align(
          alignment: responsive(context),
          child: const ErrorList(),
        ),
      ],
    );
  }
}
