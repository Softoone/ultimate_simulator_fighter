import 'dart:cli';
import 'dart:math';
import '../helper/helper.dart';
import '../models/fight.dart';
import '../models/fighter.dart';
import '../database/fighter_register.dart';

class Event {
  List<Fight> fights = [];
  String locale;
  int numberOfFights;

  Event(this.locale, this.numberOfFights) {
    if (numberOfFights <= 5) {
      _create();
    } else {
      print(
          'Número de lutas excede o limite permitido (Máximo de 7 lutas por evento)');
      numberOfFights = 0;
    }
  }

  _create() {
    final selector = Random();
    for (var i = 0; i < numberOfFights; i++) {
      _selectFightPerDivision(selector.nextInt(7), selector);
    }
  }

  void presentation() {
    print('Ladies and Getleman, welcome to your ultimate experience of UFS');
    waitFor(Helper.presentationTimeStamp);
    print("AND NOW...this is the moment you've all been waiting for");
    waitFor(Helper.presentationTimeStamp);
    print('From the $locale');
    waitFor(Helper.presentationTimeStamp);
    print("IIIIIIIIIIIIIIIIIIIIIIIIT'S TIIIIIIIIIIME");
    waitFor(Helper.presentationTimeStamp);
    print('Introducing fighters: ');
    for (var i = 0; i < fights.length; i++) {
      fights[i].toFight();

      if (i < fights.length - 1) {
        waitFor(Helper.introducingTimeStamp);
        print('');
        print('5 seconds till the next fight');
        print('');
        waitFor(Future.delayed(Duration(seconds: 5)));
      }
    }
  }

  void _selectFightPerDivision(int divisionNumber, Random selector) {
    final fighters = FighterRegister();
    Fighter f1;
    Fighter f2;

    switch (divisionNumber) {
      case 1:
        f1 = fighters.flyWeight[selector.nextInt(fighters.flyWeight.length)];
        f2 = fighters.flyWeight[selector.nextInt(fighters.flyWeight.length)];
        while (f1.isChampion!) {
          f1 = fighters.flyWeight[selector.nextInt(fighters.flyWeight.length)];
        }

        while (f1.name == f2.name) {
          f2 = fighters.flyWeight[selector.nextInt(fighters.flyWeight.length)];
        }

        fights.add(Fight(f1, f2));
        return;

      case 2:
        f1 = fighters
            .bantamWeight[selector.nextInt(fighters.bantamWeight.length)];
        f2 = fighters
            .bantamWeight[selector.nextInt(fighters.bantamWeight.length)];
        while (f1.isChampion!) {
          f1 = fighters
              .bantamWeight[selector.nextInt(fighters.bantamWeight.length)];
        }

        while (f1.name == f2.name) {
          f2 = fighters
              .bantamWeight[selector.nextInt(fighters.bantamWeight.length)];
        }
        fights.add(Fight(f1, f2));
        return;

      case 3:
        f1 = fighters
            .welterWeight[selector.nextInt(fighters.welterWeight.length)];
        f2 = fighters
            .welterWeight[selector.nextInt(fighters.welterWeight.length)];
        while (f1.isChampion!) {
          f1 = fighters
              .welterWeight[selector.nextInt(fighters.welterWeight.length)];
        }

        while (f1.name == f2.name) {
          f2 = fighters
              .welterWeight[selector.nextInt(fighters.welterWeight.length)];
        }
        fights.add(Fight(f1, f2));
        return;

      case 4:
        f1 = fighters
            .middleWeight[selector.nextInt(fighters.middleWeight.length)];
        f2 = fighters
            .middleWeight[selector.nextInt(fighters.middleWeight.length)];
        while (f1.isChampion!) {
          f1 = fighters
              .middleWeight[selector.nextInt(fighters.middleWeight.length)];
        }

        while (f1.name == f2.name) {
          f2 = fighters
              .middleWeight[selector.nextInt(fighters.middleWeight.length)];
        }
        fights.add(Fight(f1, f2));
        return;

      case 5:
        f1 = fighters.lightHeavyWeight[
            selector.nextInt(fighters.lightHeavyWeight.length)];
        f2 = fighters.lightHeavyWeight[
            selector.nextInt(fighters.lightHeavyWeight.length)];
        while (f1.isChampion!) {
          f1 = fighters.lightHeavyWeight[
              selector.nextInt(fighters.lightHeavyWeight.length)];
        }

        while (f1.name == f2.name) {
          f2 = fighters.lightHeavyWeight[
              selector.nextInt(fighters.lightHeavyWeight.length)];
        }
        fights.add(Fight(f1, f2));
        return;

      case 6:
        f1 =
            fighters.heavyWeight[selector.nextInt(fighters.heavyWeight.length)];
        f2 =
            fighters.heavyWeight[selector.nextInt(fighters.heavyWeight.length)];
        while (f1.isChampion!) {
          f1 = fighters
              .heavyWeight[selector.nextInt(fighters.heavyWeight.length)];
        }

        while (f1.name == f2.name) {
          f2 = fighters
              .heavyWeight[selector.nextInt(fighters.heavyWeight.length)];
        }
        fights.add(Fight(f1, f2));
        return;

      default:
        f1 =
            fighters.lightWeight[selector.nextInt(fighters.lightWeight.length)];
        f2 =
            fighters.lightWeight[selector.nextInt(fighters.lightWeight.length)];
        while (f1.isChampion!) {
          f1 = fighters
              .lightWeight[selector.nextInt(fighters.lightWeight.length)];
        }

        while (f1.name == f2.name) {
          f2 = fighters
              .lightWeight[selector.nextInt(fighters.lightWeight.length)];
        }
        fights.add(Fight(f1, f2));
        return;
    }
  }
}
