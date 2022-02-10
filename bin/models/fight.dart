import 'dart:cli';
import 'dart:math';
import '../helper/helper.dart';
import 'fighter.dart';

class Fight {
  late Fighter _challenger;
  late Fighter _host;
  int _rounds = 3;
  late bool isAproved;

  Fight(this._challenger, this._host) {
    _newFight(_challenger, _host);
  }

  void _newFight(Fighter challenger, Fighter host) {
    if (challenger != host && challenger.division == host.division) {
      isAproved = true;
      _challenger = challenger;
      _host = host;
    } else {
      isAproved = false;
      print("It wasn't possible to define this fight");
      print(
          "One of the fighters do not attend the specifications of divisions");
    }
  }

  void toFight() {
    if (isAproved) {
      waitFor(Helper.presentationTimeStamp);
      print('Throughout in the UFS ${_host.division} division');
      waitFor(Helper.presentationTimeStamp);
      _challenger.introduce('blue');
      _host.introduce('red');
      _simulateFight();
    } else {
      print("There's no permission for this fight to happen");
    }
  }

  void _simulateFight() {
    int winChallenger = 0;
    int winHost = 0;
    int draw = 0;
    int winMargin = 2;
    bool winTkoSubm = false;
    Random rng = Random();

    if (_host.isChampion!) {
      _rounds = 5;
      winMargin = 3;
    }

    for (var i = 1; i <= _rounds; i++) {
      if (!winTkoSubm) {
        waitFor(Helper.roundTimeStamp);
        print('========== START OF ROUND $i ==============');

        String roundWinner = _pickRoundWinner(rng.nextInt(10));
        if (roundWinner == 'host') {
          winHost++;
        } else if (roundWinner == 'challenger') {
          winChallenger++;
        } else {
          draw++;
        }

        waitFor(Helper.roundTimeStamp);
        print('========== END OF ROUND $i ================');
        print('');

        if (i < _rounds) {
          winTkoSubm = _winByKoSubmission(winMargin, winChallenger, winHost);
        }
      }
    }

    if (!winTkoSubm) {
      waitFor(Helper.presentationTimeStamp);
      print("After $_rounds rounds we go to the judges scorecard for decision");
      waitFor(Helper.presentationTimeStamp);
      _decideWinner(winHost, winChallenger, draw);
    }
  }

  String _pickRoundWinner(int number) {
    // Title defending
    if (_host.isChampion!) {
      if (number <= 5) {
        return 'host';
      }

      if (number >= 8) {
        return 'challenger';
      }

      return 'draw';
    }

    // Normal Fights

    if (number <= 4) {
      return 'host';
    }

    if (number <= 8) {
      return 'challenger';
    }

    return 'draw';
  }

  bool _winByKoSubmission(int winMargin, int winChallenger, int winHost) {
    if (winChallenger == winMargin) {
      print('');
      print('And the winner by TKO/Submission...'.toUpperCase());
      if (_host.isChampion!) {
        print('The new undisputed ${_challenger.division} champion of the world'.toUpperCase());
      }
      waitFor(Helper.presentationTimeStamp);
      print(_challenger.fullName);
      print('');
      return true;
    }

    if (winHost == winMargin) {
      print('');
      print('The winner by TKO/Submission...'.toUpperCase());
      if (_host.isChampion!) {
        print('and remains the undisputed ${_host.division} champion of the world'.toUpperCase());
      }
      waitFor(Helper.presentationTimeStamp);
      print(_host.fullName);
      print('');
      return true;
    }

    return false;
  }

  void _decideWinner(int winH, int winC, int d) {
    if (d > winC && d > winH || winC == winH) {
      _host.toDrawFight();
      _challenger.toDrawFight();
      print('The major and final decision is for a technical draw');
      return;
    }

    if (winC > winH) {
      _challenger.toWinFight();
      _host.toLoseFight();
      if (_host.isChampion!) {
        print(
            'The winner and new undisputed ${_challenger.division} champion of the world');
        waitFor(Helper.presentationTimeStamp);
        print(_challenger.fullName);
        return;
      }
      print('The winner by major decision: ');
      waitFor(Helper.presentationTimeStamp);
      print(_challenger.fullName);
    }

    if (winH > winC) {
      _challenger.toLoseFight();
      _host.toWinFight();
      if (_host.isChampion!) {
        print(
            'The winner and still undisputed ${_host.division} champion of the world');
        waitFor(Helper.presentationTimeStamp);
        print(_host.fullName);
        return;
      }
      print('The winner by major decision: ');
      waitFor(Helper.presentationTimeStamp);
      print(_host.fullName);
    }
  }
}
