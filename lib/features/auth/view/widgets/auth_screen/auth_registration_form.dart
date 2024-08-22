import 'package:flutter/cupertino.dart';
import 'package:movies_app/features/auth/view/widgets/auth_button.dart';
import 'package:movies_app/features/auth/view/widgets/auth_screen/auth_text_field.dart';

class AuthRegistrationForm extends StatelessWidget {
  const AuthRegistrationForm({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          color: CupertinoColors.white,
        );

    return Padding(
      padding: const EdgeInsets.only(top: 140),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Unlimited movies, \nTV shows and more',
                textAlign: TextAlign.center,
                style: textStyle.copyWith(
                  fontSize: 34,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Search media anywhere',
                style: textStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                  color: CupertinoColors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Ready to search ? Enter your email to start registration',
                style: textStyle.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w100,
                  color: CupertinoColors.white.withOpacity(.96),
                ),
              ),
              const SizedBox(height: 4),
              SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const AuthTextField(),
                    const SizedBox(width: 10),
                    AuthButton(
                      title: 'Get started',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
