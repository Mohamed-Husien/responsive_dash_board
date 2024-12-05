class TransactionModel {
  final String title, subTitle, amount;
  final bool isWithDrawal;

  const TransactionModel(
      {required this.title,
      required this.subTitle,
      required this.amount,
      required this.isWithDrawal});
}
