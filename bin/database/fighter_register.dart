import '../models/fighter.dart';

class FighterRegister {
  List<Fighter> flyWeight = [];
  List<Fighter> bantamWeight = [];
  List<Fighter> lightWeight = [];
  List<Fighter> welterWeight = [];
  List<Fighter> middleWeight = [];
  List<Fighter> lightHeavyWeight = [];
  List<Fighter> heavyWeight = [];

  FighterRegister() {
    _flyDivision();
    _bantamDivision();
    _lightDivision();
    _welterDivision();
    _middleDivision();
    _lightHeavyDivision();
    _heavyDivision();
  }

  void _flyDivision() {
    flyWeight.add(Fighter(name: 'Deiveson',nickname: "Deus da Guerra", surname: 'Figueiredo', country: 'Brazil', age: 34, height: 165, weight: 56.69,isChampion: true,wins: 21,losses: 2, draws: 1));
    flyWeight.add(Fighter(name: 'Brandon',nickname: 'The Assassin Baby', surname: 'Moreno', country: 'Mexico', age: 28, height: 170, weight: 56.69,wins: 19,losses: 6,draws: 2));
    flyWeight.add(Fighter(name: 'Alexandre', surname: 'Pantoja', nickname: 'The Cannibal',wins: 24,losses: 5,draws: 0, country: 'Brazil', age: 31, height: 165, weight: 56.69));
    flyWeight.add(Fighter(name: 'Askar', surname: 'Askarov',nickname: 'The Bullet',wins: 13,losses: 0,draws: 1, country: 'Russia', age: 28, height: 167, weight: 56.69));
    flyWeight.add(Fighter(name: 'Brandon', surname: 'Royval',nickname: 'Raw Dawg',wins: 13,losses: 6,draws: 0, country: 'USA', age: 29, height: 175, weight: 56.69));

  }

  void _bantamDivision() {
    bantamWeight.add(Fighter(name: 'Aljamain', surname: 'Sterling',nickname: 'Funk Master',wins: 20,losses: 3,draws: 0, country: 'USA', age: 32, height: 170, weight: 61.00,isChampion: true));  
    bantamWeight.add(Fighter(name: 'José', surname: 'Aldo',wins: 30,losses: 7,draws: 0, country: 'Brazil', age: 35, height: 175, weight: 61.20));  
    bantamWeight.add(Fighter(name: 'Cory', surname: 'Sandhagen',wins: 14,losses: 3,draws: 0, country: 'USA', age: 29, height: 180, weight: 61.20));  
    bantamWeight.add(Fighter(name: 'Dominick', surname: 'Cruz',nickname: 'The Dominator',wins: 23,losses: 3,draws: 0, country: 'USA', age: 36, height: 172, weight: 61.20));  
    bantamWeight.add(Fighter(name: 'Merab', surname: 'Dvalishvili',nickname: 'The Machine',wins: 14,losses: 4,draws: 0, country: 'Georgia', age: 30, height: 167, weight: 61.20));  
  }

  void _lightDivision() {
    lightWeight.add(Fighter(name: 'Charles', surname: 'Oliveira',nickname: 'do Bronx',wins: 31,losses: 8,draws: 0, country: 'Brazil', age: 32, height: 177, weight: 70.30,isChampion: true));
    lightWeight.add(Fighter(name: 'Justin', surname: 'Gaethje',nickname: 'The Highlight',wins: 23,losses: 3,draws: 0, country: 'USA', age: 32, height: 180, weight: 70.30));
    lightWeight.add(Fighter(name: 'Dustin', surname: 'Poirier',nickname: 'The Diamond',wins: 28,losses: 7,draws: 0, country: 'USA', age: 32, height: 175, weight: 70.08));
    lightWeight.add(Fighter(name: 'Beneil', surname: 'Dariush',wins: 21,losses: 4,draws: 1, country: 'Iran', age: 32, height: 177, weight: 70.30));
    lightWeight.add(Fighter(name: 'Michael', surname: 'Chandler',nickname: 'Iron',wins: 22,losses: 6,draws: 0, country: 'USA', age: 35, height: 172, weight: 70.30));
    lightWeight.add(Fighter(name: 'Conor', surname: 'McGregor',nickname: 'The Notorious',wins: 22,losses: 6,draws: 0, country: 'Ireland', age: 32, height: 175, weight: 70.30));
    lightWeight.add(Fighter(name: 'Tony', surname: 'Ferguson',nickname: 'El Cucuy',wins: 26,losses: 6,draws: 0, country: 'USA', age: 37, height: 180, weight: 65.77));
    lightWeight.add(Fighter(name: 'Rafael', surname: 'dos Anjos',wins: 29,losses: 13,draws: 0, country: 'Brazil', age: 36, height: 172, weight: 70.30));
  }

  void _welterDivision() {
    welterWeight.add(Fighter(name: 'Kamaru', surname: 'Usman',nickname: 'The Nigerian Nightmare',wins: 19,losses: 1,draws: 0, country: 'USA', age: 34, height: 182, weight: 76.65,isChampion: true));
    welterWeight.add(Fighter(name: 'Jorge', surname: 'Masvidal',nickname: 'Gamebred',wins: 35,losses: 15,draws: 0, country: 'USA', age: 36, height: 180, weight: 70.76));

  }

  void _middleDivision() {
    middleWeight.add(Fighter(name: 'Israel', surname: 'Adesanya',nickname: 'The Last Stylebender',wins: 21,losses: 1,draws: 0, country: 'Nigeria', age: 31, height: 193, weight: 83.90,isChampion: true));
    middleWeight.add(Fighter(name: 'Robert', surname: 'Whittaker',nickname: 'The Reaper',wins: 24,losses: 5,draws: 0, country: 'Australia', age: 30, height: 182, weight: 83.90));
    middleWeight.add(Fighter(name: 'Paulo', surname: 'Costa',nickname: 'Borrachinha',wins: 13,losses: 2,draws: 0, country: 'Brazil', age: 30, height: 185, weight: 83.90));
    middleWeight.add(Fighter(name: 'Kelvin', surname: 'Gastelum',wins: 17,losses: 8,draws: 0, country: 'USA', age: 29, height: 177, weight: 83.90));
    middleWeight.add(Fighter(name: 'Chris', surname: 'Weidman',nickname: 'The All-American',wins: 15,losses: 6,draws: 0, country: 'USA', age: 36, height: 188, weight: 83.90));
  }

  void _lightHeavyDivision() {
    lightHeavyWeight.add(Fighter(name: 'Glover', surname: 'Teixeira',wins: 33,losses: 7,draws: 0, country: 'Brazil', age: 42, height: 188, weight: 92.88,isChampion: true));
    lightHeavyWeight.add(Fighter(name: 'Jan', surname: 'Blachowicz',wins: 28,losses: 8,draws: 0, country: 'Poland', age: 38, height: 188, weight: 92.88));
    lightHeavyWeight.add(Fighter(name: 'Jiri', surname: 'Prochazka',nickname: 'BJP',wins: 28,losses: 3,draws: 1, country: 'Czech Republic', age: 29, height: 190, weight: 92.88));
    lightHeavyWeight.add(Fighter(name: 'Anthony', surname: 'Smith',nickname: 'Lionheart',wins: 36,losses: 16,draws: 0, country: 'USA', age: 33, height: 193, weight: 92.21));
    lightHeavyWeight.add(Fighter(name: 'Thiago', surname: 'Santos',nickname: 'Marreta',wins: 22,losses: 9,draws: 0, country: 'Brazil', age: 37, height: 188, weight: 92.44));
    lightHeavyWeight.add(Fighter(name: 'Dominick', surname: 'Reyes',nickname: 'The Devastator',wins: 12,losses: 3,draws: 0, country: 'USA', age: 31, height: 193, weight: 92.90));
  }

  void _heavyDivision() {
    heavyWeight.add(Fighter(name: 'Francis', surname: 'Ngannou',nickname: 'The Predator',wins: 17,losses: 3,draws: 0, country: 'Cameroon', age: 35, height: 193, weight: 118.84,isChampion: true));
    heavyWeight.add(Fighter(name: 'Ciryl', surname: 'Gane',nickname: 'Bon Gamin',wins: 10,losses: 1,draws: 0, country: 'France', age: 31, height: 193, weight: 111.13));
    heavyWeight.add(Fighter(name: 'Stipe', surname: 'Miocic',wins: 20,losses: 4,draws: 0, country: 'USA', age: 38, height: 195, weight: 108.86));
    heavyWeight.add(Fighter(name: 'Jairzinho', surname: 'Rozenstruik',nickname: 'Bigi Boy',wins: 12,losses: 3,draws: 0, country: 'Suriname', age: 33, height: 188, weight: 109.76));
    heavyWeight.add(Fighter(name: 'Augusto', surname: 'Sakai',wins: 15,losses: 3,draws: 1, country: 'Brazil', age: 30, height: 190, weight: 120.20));
    heavyWeight.add(Fighter(name: 'Tai', surname: 'Tuivasa',nickname: 'Bam Bam',wins: 13,losses: 3,draws: 0, country: 'Australia', age: 28, height: 188, weight: 119.74));
    heavyWeight.add(Fighter(name: 'Chris', surname: 'Daukaus',wins: 12,losses: 3,draws: 0, country: 'USA', age: 32, height: 190, weight: 113.39));
  }
}
