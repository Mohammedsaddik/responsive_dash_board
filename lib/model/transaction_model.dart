class TransactionModel {
  final String title, date, amount;

  final bool isIncome;

  TransactionModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.isIncome});
}
