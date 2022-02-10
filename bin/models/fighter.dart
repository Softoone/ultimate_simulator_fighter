import 'dart:cli';

import '../helper/helper.dart';

class Fighter {
  String name;
  String? nickname;
  String surname;
  String country;
  int age;
  int height;
  late double _weight;
  String? _division;
  int? wins, losses, draws;
  bool? isChampion;

  Fighter(
      {required this.name,
      required this.surname,
      required this.country,
      required this.age,
      required this.height,
      required double weight,
      this.nickname,
      this.wins,
      this.draws,
      this.losses,
      this.isChampion}) {
    wins ??= 0;
    draws ??= 0;
    losses ??= 0;
    isChampion ??= false;
    _setDivision(weight);
  }

  // Getters and setters

  set weight(double weight) => weight = weight;

  String? get division {
    if (_division != null) {
      return _division;
    } else {
      return "There is no division that attends the fighter's weight";
    }
  }

  String get fullName {
    if (nickname != null) {
      String fullName = name + ' ' + nickname!.toUpperCase() + ' ' + surname;
      return fullName;
    } else {
      return name + ' ' + surname;
    }
  }

  // Métodos Privados

  void _divisionFormat(String name) => _division = name + 'weight';

  void _setDivision(double weight) {
    _weight = weight;
    if (_weight < 52.20) {
      _division = null;
      return;
    }

    if (_weight <= 56.70) {
      _divisionFormat('fly');
      return;
    }

    if (_weight <= 61.20) {
      _divisionFormat('bantam');
      return;
    }

    if (_weight <= 70.30) {
      _divisionFormat('light');
      return;
    }

    if (_weight <= 77.10) {
      _divisionFormat('welter');
      return;
    }

    if (_weight <= 83.90) {
      _divisionFormat('middle');
      return;
    }

    if (_weight <= 92.90) {
      _divisionFormat('light heavy');
      return;
    }

    if (_weight <= 120.20) {
      _divisionFormat('heavy');
    } else {
      _division = null;
    }
  }

  // Métodos Públicos

  @override
  String toString() {
    String fighter = '''
    Nome: $name,
    Sobrenome: $surname,
    Apelido: $nickname,
    Idade: $age,
    Peso: $_weight,
    Altura: $height,
    Categoria: $_division
    ''';
    return fighter;
  }

  void introduce(String cornerColor) {
    waitFor(Helper.introducingTimeStamp);
    print('');
    print('====================================');
    print('In the $cornerColor corner:');
    waitFor(Helper.introducingTimeStamp);
    print('Measuring $height centimeters');
    waitFor(Helper.introducingTimeStamp);
    print('With a weight of ${_weight.round()} kilos');
    waitFor(Helper.introducingTimeStamp);
    print('$wins wins');
    waitFor(Helper.introducingTimeStamp);
    losses == 0 ? print('no losses') : print('$losses losses');
    waitFor(Helper.introducingTimeStamp);
    if (draws! > 0) {
      print('$draws draws');
      waitFor(Helper.introducingTimeStamp);
    }
    print('Straight from $country');
    waitFor(Helper.introducingTimeStamp);
    if (isChampion!) {
      print('The undisputed $_division champion of the world');
      waitFor(Helper.introducingTimeStamp);
    }
    print(fullName);
    print('====================================');
    print('');
    waitFor(Helper.presentationTimeStamp);
  }

  void toWinFight() {
    wins = wins! + 1;
  }

  void toLoseFight() {
    losses = losses! + 1;
  }

  void toDrawFight() {
    draws = draws! + 1;
  }
}
