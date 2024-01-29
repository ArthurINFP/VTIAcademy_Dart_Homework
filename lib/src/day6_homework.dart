import 'dart:io';

void main() {
  // Ex1
  var player1 = initPlayer(
      "Lionel Messi",
      35,
      1.70,
      ["Forward", "Attacking Midfielder"],
      "1987-06-24",
      ["FC Barcelona", "Paris Saint-Germain"],
      "Male");

  var player2 = initPlayer(
      "Alexia Putellas",
      28,
      1.73,
      ["Midfielder", "Attacker"],
      "1994-02-04",
      ["FC Barcelona", "RCD Espanyol"],
      "Female");

  var player3 = initPlayer("Cristiano Ronaldo", 37, 1.87, ["Forward"],
      "1985-02-05", ["Manchester United", "Real Madrid", "Juventus"], "Male");

  // print(player1);
  // print(player2);
  // print(player3);

  //Ex2
  // print("Tax Calculator");
  // stdout.write("Enter income amount: ");
  // var income = stdin.readLineSync();
  // stdout.write("Is the product alcoholic: ");
  // var isAlcohol = stdin.readLineSync();
  // print("================================");
  // print(checkInput(income!, isAlcohol!)
  //     ? "The tax is ${calculatingTax(int.parse(income), isAlcohol)}%"
  //     : "Invalid input");

  //Ex3
  printSquareNumber(10);
}

void printSquareNumber(int l) {
  for (int i = 1; i <= l; i++) {
    print(i * i);
  }
}

bool checkInput(String income, String isAlcohol) {
  try {
    var parseIncome = int.parse(income);
    if (parseIncome < 0 ||
        !(isAlcohol.trim().toLowerCase() == "true" ||
            isAlcohol.trim().toLowerCase() == 'false')) {
      return false;
    }
    return true;
  } catch (e) {
    return false;
  }
}

int calculatingTax(int income, String isAlcohol) {
  try {
    switch (income) {
      case >= 0 && < 10000:
        return isAlcohol.trim().toLowerCase() == "true" ? 13 : 10;
      case >= 10000 && < 20000:
        return isAlcohol.trim().toLowerCase() == "true" ? 15 : 12;
      case >= 20000:
        return 18;
      default:
        return -1;
    }
  } catch (e) {
    return -1;
  }
}

Map<String, dynamic> initPlayer(
    String name,
    int age,
    num height,
    List<String> positions,
    String dateOfBirth,
    List<String> playedClubs,
    String gender) {
  return {
    "Name": name,
    "Age": age,
    "Height": height,
    "Positions": positions,
    "DateOfBirth": dateOfBirth,
    "PlayedClubs": playedClubs,
    "Gender": gender,
  };
}
