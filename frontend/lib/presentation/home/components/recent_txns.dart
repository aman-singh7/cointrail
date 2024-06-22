part of '../home_screen.dart';

class RecentTxns extends StatefulWidget {
  const RecentTxns({super.key});

  @override
  State<RecentTxns> createState() => _RecentTxnsState();
}

class _RecentTxnsState extends State<RecentTxns>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recent Transactions",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              'View All',
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            children: [
              TabBar(
                controller: tabController,
                tabs: const [
                  Tab(text: 'All'),
                  Tab(text: 'Revenue'),
                  Tab(text: 'Expenses'),
                ],
              ),
              const SizedBox(height: 12),
              _buildTransactions(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTxn(String title, String amount, String date) {
    return ListTile(
      leading: const Icon(Icons.currency_rupee_outlined),
      title: Text(title),
      trailing: Column(
        children: [
          Text(amount),
          Text(date),
        ],
      ),
    );
  }

  Widget _buildTransactions() {
    return ListView(
      shrinkWrap: true,
      children: [
        _buildTxn('GTR 5', '160', '17 May 2023'),
        _buildTxn('Polo Shirt', '20', '17 May 2023'),
        _buildTxn('Taxi Fare', '12', '16 May 2023'),
        _buildTxn('Keyboard', '22', '15 May 2023'),
        _buildTxn('GTR 5', '160', '17 May 2023'),
        _buildTxn('Polo Shirt', '20', '17 May 2023'),
        _buildTxn('Taxi Fare', '12', '16 May 2023'),
        _buildTxn('Keyboard', '22', '15 May 2023'),
        _buildTxn('GTR 5', '160', '17 May 2023'),
        _buildTxn('Polo Shirt', '20', '17 May 2023'),
        _buildTxn('Taxi Fare', '12', '16 May 2023'),
        _buildTxn('Keyboard', '22', '15 May 2023'),
      ],
    );
  }
}
