import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/auth/view/cubit/auth_cubit.dart';
import 'package:movies_app/features/auth/view/widgets/auth_button.dart';
import 'package:movies_app/features/auth/view/widgets/auth_text_field.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthCubit cubit = context.read<AuthCubit>();
    final AuthState state = context.select((AuthCubit cubit) => cubit.state);

    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          color: CupertinoColors.black.withOpacity(0.75),
        );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'STEP 1 OF 3',
          style: textStyle.copyWith(
            fontSize: 13,
            color: CupertinoColors.systemGrey,
          ),
        ),
        Text(
          'Create a password\nto register your account',
          style: textStyle.copyWith(
            fontSize: 28,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "Just a few more steps and you're done!",
          style: textStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: CupertinoColors.black.withOpacity(0.7),
          ),
        ),
        const SizedBox(height: 16),
        AuthTextField(
          text: state.email,
          message: state.emailFieldMessage,
          suffixState: state.emailFieldState,
          onChanged: cubit.onEmailChanged,
          title: 'Email',
        ),
        const SizedBox(height: 8),
        AuthTextField(
          text: state.registerPassword,
          onChanged: cubit.onRegisterPassChanged,
          title: 'Create a password',
          suffixState: state.passFieldState,
          message: state.passFieldMessage,
          obscure: true,
        ),
        const SizedBox(height: 8),
        AuthTextField(
          text: state.repeatPassword,
          onChanged: cubit.onRepeatPassChanged,
          title: 'Repeat new password',
          message: state.repeatPassFieldMessage,
          suffixState: state.repeatPassFieldState,
          obscure: true,
        ),
        const SizedBox(height: 16),
        AuthButton(
          title: 'Register',
          active: state.emailFieldState.isSuccess &&
              state.passFieldState.isSuccess &&
              state.repeatPassFieldState.isSuccess,
          onPressed: () {},
        ),
      ],
    );
  }
}
