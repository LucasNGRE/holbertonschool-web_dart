import '4-util.dart';
import 'dart:convert';

calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map user = json.decode(userData);

    String ordersData = await fetchUserOrders(user['id']);
    List orders = json.decode(ordersData);

    double total = 0;
    for (var product in orders) {
      String priceData = await fetchProductPrice(product);
      total += json.decode(priceData);
    }

    return total;
  } catch (err) {
    return -1;
  }
}
