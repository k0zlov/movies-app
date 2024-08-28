import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/auth/view/cubit/auth_cubit.dart';
import 'package:movies_app/features/auth/view/widgets/auth_button.dart';
import 'package:movies_app/features/auth/view/widgets/auth_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthCubit cubit = context.read<AuthCubit>();
    final AuthState state = context.select((AuthCubit cubit) => cubit.state);

    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          color: CupertinoColors.black.withOpacity(0.75),
        );

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .03,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter your email\nand password to login',
            style: textStyle.copyWith(
              fontSize: 28,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Do you remember your password ?',
            style: textStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: CupertinoColors.black.withOpacity(0.7),
            ),
          ),
          const SizedBox(height: 16),
          AuthTextField(
            text: state.email,
            onChanged: cubit.onEmailChanged,
            title: 'Email',
            suffixState: state.loginEmailFieldState,
            message: state.loginEmailMessage,
          ),
          const SizedBox(height: 8),
          AuthTextField(
            text: state.loginPassword,
            onChanged: cubit.onLoginPassChanged,
            title: 'Enter a password',
            obscure: true,
          ),
          const SizedBox(height: 16),
          AuthButton(
            title: 'Sign in',
            active: state.loginEmailFieldState.isSuccess &&
                state.loginPassword.isNotEmpty,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
