part of '../home_screen.dart';

class Header extends StatelessWidget {
  const Header({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!ResponsiveView.isDesktop(context))
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: onPressed,
          ),
        if (!ResponsiveView.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        if (!ResponsiveView.isMobile(context))
          Spacer(flex: ResponsiveView.isDesktop(context) ? 2 : 1),
        const Expanded(child: SearchField()),
        const ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.person,
            size: 40,
          ),
          if (!ResponsiveView.isMobile(context))
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Text("Angelina Jolie"),
            ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextInput(
      hint: "Search",
      suffix: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(12 * 0.75),
          margin: const EdgeInsets.symmetric(horizontal: 6),
          decoration: const BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: const Icon(
            Icons.search,
            size: 30,
            color: AppColors.whiteColor,
          ),
        ),
      ),
      fillColor: AppColors.secondary,
      isFilled: true,
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
