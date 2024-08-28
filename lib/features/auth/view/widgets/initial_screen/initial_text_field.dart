import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/widgets/reactive/reactive_text_field.dart';
import 'package:movies_app/features/auth/view/cubit/auth_cubit.dart';

class InitialScreenTextField extends StatelessWidget {
  const InitialScreenTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          color: CupertinoColors.black.withOpacity(0.4),
        );

    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 190,
        maxWidth: 400,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .3,
        child: ReactiveTextField(
          text: context.select((AuthCubit cubit) => cubit.state).email,
          builder: (controller, focusNode) {
            return CupertinoTextField(
              onChanged: context.read<AuthCubit>().onEmailChanged,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: CupertinoColors.white,
              ),
              placeholder: 'Email address',
              placeholderStyle: textStyle,
              style: textStyle.copyWith(
                color: CupertinoColors.black.withOpacity(0.9),
              ),
            );
          },
        ),
      ),
    );
  }
}
