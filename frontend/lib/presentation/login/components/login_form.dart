part of '../login_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Log in or sign up',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 15),
        const TextInput(hint: 'Email'),
        const SizedBox(height: 20),
        PrimaryButton(
          label: 'Continue',
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ));
          },
        ),
        const SizedBox(height: 8),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Prefer phone number?'),
            Text(
              'Use phone',
              style: TextStyle(color: AppColors.gradient1),
            ),
          ],
        ),
        const SizedBox(height: 20),
        _buildORSection(),
        const SizedBox(height: 15),
        const AppIconButton(
          label: 'Continue with Google',
          icon: 'assets/icons/google.svg',
        ),
        const SizedBox(height: 20),
        const AppIconButton(
          label: 'Read Only',
        ),
      ],
    );
  }

  Widget _buildORSection() {
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
