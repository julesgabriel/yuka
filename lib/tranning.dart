import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  List list = <int>[25, 42, 79, 12];
  list.sort();

  List double = list.map((e) => e * 2).toList();
  print(double);

  var v1 = vehicule('bike');
  v1.speedUp(10);
  print(v1.speed);

  // print("Enter your name?");
  // Reading name of the Geek
  var name = 'Bernard';
  // api(name: name);

  print(isPangramme('paeaertez ce vieux whisky au juge blond qui fume'));
}

void api({String? name}) async {
  var url = Uri.https("api.nationalize.io", "/", {"name": "$name"});
  var response = await http.get(url);

  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    print(jsonResponse);
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

String isPangramme(String sentence) {
  String alphabet = 'abcdefghijklmnopqrstuvwxyz';
  for (String i in alphabet.split('')) {
    print(i);
    if (!sentence.contains(i.toLowerCase())) {
      return 'false';
    }
  }
  ;
  return 'truc';
}

abstract class vehicule {
  int _vitesse;
  final int capacite;

  vehicule._(this.capacite) : _vitesse = 0;

  int get speed => _vitesse;

  void speedUp(int increse) {
    this._vitesse += increse;
  }

  factory vehicule(String type) {
    if (type == 'bike') {
      return Bike();
    } else if (type == 'car') {
      return Car();
    } else {
      throw Exception();
    }
  }

  @override
  String toString() {
    // TODO: implement toString
    return "vitesse : $_vitesse, capacite : $capacite";
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is vehicule &&
          runtimeType == other.runtimeType &&
          capacite == other.capacite &&
          _vitesse == other._vitesse;

  @override
  int get hashCode => capacite.hashCode;
}

class Bike extends vehicule {
  Bike() : super._(1);
}

class Car extends vehicule {
  Car() : super._(4);
}
