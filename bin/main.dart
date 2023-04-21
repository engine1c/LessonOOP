//6
class Paladin6{
  num atack;
  num defense;
  
  Paladin6(this.atack,this.defense);
  Paladin6.darker(num atack):this(atack,5);
  @override
  String toString()=> 'Paladin <atack:$atack, defense:$defense>';
}
//1
class Paladin1{
  late num level;
  late num atack;
  late num defense;

  Paladin1({this.level = 11,this.atack = 111 ,this.defense = 1111});
  Paladin1.darker({this.level=12}) {
    atack = 122;
    defense = 1222;
  }

  @override
  String toString()=> 'Paladin1: level=[$level], atack=[$atack], defense=[$defense]';
}

//2
class Paladin2{
  late num level;
  late num atack;
  late num defense;

  Paladin2.lighter({this.level = 21,this.atack = 211 ,this.defense = 2111});
  Paladin2.darker({this.level=22}) {
    atack = 222;
    defense = 2222;
  }

  @override
  String toString()=> 'Paladin2: level=[$level], atack=[$atack], defense=[$defense]';
}

class LightWarrior extends Paladin2{

  num lightPower;

  LightWarrior.lighter({this.lightPower = 99.99}) : super.lighter(level: 23);

  @override
    String toString(){
      return '${super.toString()} -> LightPower: lightPower=[$lightPower]';
      }
}

void main()  {
//2
LightWarrior lightW = LightWarrior.lighter();
print(lightW);

// //1
// Paladin1 newHero = Paladin1(level: 10);
// print(newHero);

// Paladin1 newHeroD = Paladin1.darker(level:20);
// print(newHeroD);

// newHero.level = 1;
// print(newHero.level);

////6  
// Paladin6 p = Paladin6.darker(20);
// print(p);

}
