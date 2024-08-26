import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/errors/failure.dart';
import 'package:movies_app/core/widgets/animations/progress_bar/progress_bar.dart';
import 'package:movies_app/features/errors/view/cubit/error_cubit.dart';
import 'package:movies_app/features/errors/view/widgets/error_list_item.dart';

class ErrorList extends StatefulWidget {
  const ErrorList({super.key});

  @override
  State<ErrorList> createState() => _ErrorListState();
}

class _ErrorListState extends State<ErrorList> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  List<Failure> _failures = [];
  final Map<int, GlobalKey<ProgressBarState>> _progressKeys = {};

  @override
  Widget build(BuildContext context) {
    final ErrorState state = context.select((ErrorCubit cubit) => cubit.state);
    final List<Failure> newFailures = state.failures.values.toList();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final int newCount = newFailures.length;
      final int currentCount = _failures.length;

      if (newCount > currentCount) {
        _listKey.currentState!.insertAllItems(
          currentCount,
          newCount - currentCount,
        );
      }

      if (newCount < currentCount) {
        for (int i = currentCount; i > newCount; i--) {
          _listKey.currentState!.removeItem(i - 1, (context, animation) {
            return const SizedBox.shrink();
          });
        }
      }

      _failures = newFailures;

      for (final Failure failure in newFailures) {
        if (!_progressKeys.containsKey(failure.hashCode)) {
          _progressKeys[failure.hashCode] = GlobalKey<ProgressBarState>();
        }
      }
      setState(() {});
    });

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: SizedBox(
        height: _failures.length * 80,
        width: 400,
        child: AnimatedList(
          clipBehavior: Clip.none,
          key: _listKey,
          initialItemCount: _failures.length,
          itemBuilder: (context, index, animation) {
            final Failure failure = _failures[index];

            if (index < _failures.length) {
              return SlideTransition(
                position: animation.drive(
                  Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).chain(CurveTween(curve: Curves.easeOut)),
                ),
                child: ErrorListItem(
                  failure: failure,
                  progressKey: _progressKeys[failure.hashCode]!,
                ),
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
