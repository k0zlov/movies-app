import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/navigation/routes.dart';
import 'package:movies_app/features/auth/view/widgets/initial_screen/initial_button.dart';
import 'package:movies_app/features/auth/view/widgets/initial_screen/initial_text_field.dart';

class GetStartedForm extends StatelessWidget {
  const GetStartedForm({super.key});

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
                    const InitialScreenTextField(),
                    const SizedBox(width: 10),
                    InitialScreenButton(
                      title: 'Get started',
                      onPressed: () => context.goNamed(
                        AppRoutes.registration.name,
                      ),
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
