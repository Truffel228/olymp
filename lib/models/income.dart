class Income {
  const Income(this.amount, this.description, this.date);
  final int amount;
  final String description;
  final DateTime date;

  factory Income.fromJson(Map<String, dynamic> json) => Income(
        json['amount'] as int,
        json['description'] as String,
        DateTime.tryParse(json['date'] as String) ?? DateTime(2000),
      );

  Map<String, dynamic> toJson() => {
        'amount': amount,
        'description': description,
        'date': date.toString(),
      };
}
