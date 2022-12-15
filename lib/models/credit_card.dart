class CreditCard {
  final String type;
  final String date;
  final String fullName;
  final int cardNumber;
  final int cvv;

  CreditCard({
    required this.type,
    required this.date,
    required this.fullName,
    required this.cardNumber,
    required this.cvv,
  });

  factory CreditCard.fromJson(Map<String, dynamic> json) {
    return CreditCard(
      type: json['type'],
      date: json['date'],
      fullName: json['fullName'],
      cardNumber: json['cardNumber'],
      cvv: json['cvv'],
    );
  }
}
