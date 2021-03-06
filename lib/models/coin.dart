// ignore_for_file: constant_identifier_names, unnecessary_this

import 'package:crypto_dashboard/utils/string_extension.dart';

enum CoinType { BITCOIN, ETHEREUM, LITECOIN, MONERO, TRON }
enum Trend { UP, DOWN }

class Coin {
  final CoinType type;
  final double currentPrice;
  final double percentChange;
  final double amount;
  final double balance;
  final Trend trend;

  Coin({
    required this.balance,
    required this.trend,
    required this.type,
    required this.currentPrice,
    required this.percentChange,
    required this.amount,
  });

  String getCoinAbbr() {
    if (this.type == CoinType.BITCOIN) {
      return "BTC";
    } else if (this.type == CoinType.ETHEREUM) {
      return "ETH";
    } else if (this.type == CoinType.LITECOIN) {
      return "LTC";
    } else if (this.type == CoinType.MONERO) {
      return "XMR";
    } else if (this.type == CoinType.TRON) {
      return "TRX";
    } else {
      return "";
    }
  }

  String getImagePath() {
    if (this.type == CoinType.BITCOIN) {
      return "assets/images/bitcoin.png";
    } else if (this.type == CoinType.ETHEREUM) {
      return "assets/images/ethereum.png";
    } else if (this.type == CoinType.LITECOIN) {
      return "assets/images/litecoin.png";
    } else if (this.type == CoinType.TRON) {
      return "assets/images/tron.png";
    } else if (this.type == CoinType.MONERO) {
      return "assets/images/monero.png";
    } else {
      return "";
    }
  }

  @override
  String toString() {
    String firstPart = this.type.toString().split(".")[1];
    return firstPart.capitalize();
  }
}
