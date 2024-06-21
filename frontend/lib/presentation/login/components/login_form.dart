part of '../login_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Log in or sign up',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 15),
        TextInput(hint: 'Email'),
        SizedBox(height: 20),
        GradientButton(label: 'Continue'),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Prefer phone number?'),
            Text(
              'Use phone',
              style: TextStyle(color: AppColors.gradient1),
            ),
          ],
        ),
        SizedBox(height: 20),
        ORWidget(),
        SizedBox(height: 15),
        AppIconButton(
          label: 'Continue with Google',
          icon: 'assets/icons/google.svg',
        ),
        SizedBox(height: 20),
        AppIconButton(
          label: 'Read Only',
        ),
      ],
    );
  }
}

class ORWidget extends StatelessWidget {
  const ORWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'OR',
            style: TextStyle(fontSize: 17),
          ),
        ),
        Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}
