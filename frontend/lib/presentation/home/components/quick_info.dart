part of '../home_screen.dart';

class QuickInfo extends StatelessWidget {
  const QuickInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ResponsiveView(
      mobile: InfoCardGridView(
        crossAxisCount: size.width < 650 ? 1 : 2,
        childAspectRatio: size.width < 650 ? 2 : 1.2,
      ),
      tablet: const InfoCardGridView(),
      desktop: InfoCardGridView(
        childAspectRatio: size.width < 1400 ? 1.2 : 1.5,
      ),
    );
  }
}

class InfoCardGridView extends StatelessWidget {
  const InfoCardGridView({
    this.crossAxisCount = 2,
    this.childAspectRatio = 1,
    super.key,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: childAspectRatio,
      ),
      children: const [
        TotalBalance(),
        UpcomingBills(),
      ],
    );
  }
}

class TotalBalance extends StatelessWidget {
  const TotalBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Total Balance",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 12),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$240,000',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      'All Accounts',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class UpcomingBills extends StatelessWidget {
  const UpcomingBills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Upcoming Bill",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              'View All',
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
        const SizedBox(height: 12),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const Column(
              children: [
                ListTile(
                  title: Text(
                    'Figma-Monthly',
                  ),
                  trailing: Text("\$150"),
                ),
                ListTile(
                  title: Text(
                    'Adobe-Yearly',
                  ),
                  trailing: Text("\$300"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
