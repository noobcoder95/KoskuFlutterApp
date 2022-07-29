import 'dart:convert';
import 'package:Koskuappfront/models/models.dart';
import 'package:http/http.dart' as http;

class TransactionService {
  User token;
  String baseUrl = 'http://www.koskuapp.web.id/api';

  Future<List<Transaction>> getTransaction() async {
    var url = '$baseUrl/transaction';
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': token,
    };
    print(token);
    var response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      List datas = jsonDecode(response.body)['data']['data'];

      List<Transaction> transactions = [];

      for (var item in datas) {
        transactions.add(Transaction.fromJson(item));
      }

      return transactions;
    } else {
      throw Exception('Gagal Ambil Data');
    }
  }
}
