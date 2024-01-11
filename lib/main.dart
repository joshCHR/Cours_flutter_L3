import 'dart:math';

class Etudiant {
  late String _id;
  late String _nom;
  late String _postnom;
  late String _prenom;
  late String _sexe;
  late int _age;
  late String _dateNaissance;
  late double _taille;
  late double _poids;

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get nom => _nom;

  set nom(String value) {
    _nom = value;
  }

  String get postnom => _postnom;

  set postnom(String value) {
    _postnom = value;
  }

  String get prenom => _prenom;

  set prenom(String value) {
    _prenom = value;
  }

  String get sexe => _sexe;

  set sexe(String value) {
    _sexe = value;
  }

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  String get dateNaissance => _dateNaissance;

  set dateNaissance(String value) {
    _dateNaissance = value;
  }

  double get taille => _taille;

  set taille(double value) {
    _taille = value;
  }

  double get poids => _poids;

  set poids(double value) {
    _poids = value;
  }
}

void main() {
  print("-------- Mineur ou Majeur ---------------------");
  print(minOrMaj(5));

  print("-------- Bonjour monde ------------------------");
  bonjourMonde(3);

  print("-------- Second Degree ------------------------");
  print(secondDegre(2, 4, 2));

  print("-------- Moyenne ------------------------");
  double maMoyenne = moyenne(1, 2, 3, 4, 5);
  print("La moyenne = $maMoyenne");

  print("-------- Factoriel ------------------------");
  int factoriel = facto(6);
  print("Factoriel = $factoriel");

  print("-------- Etudiant ------------------------");

  Etudiant etudiant = new Etudiant();
  etudiant._nom = "Eliane";
  etudiant.postnom = "Ansima";
  etudiant.prenom = "Elia";
  etudiant._age = 20;
  etudiant._dateNaissance = "20-08-2003";
  etudiant._id = "21IGGJ119450";
  etudiant._poids = 70.8;
  etudiant._sexe = "F";
  etudiant._taille = 1.78;

  print("Id : " + etudiant._id);
  print("Nom : " + etudiant._nom);
  print("Post-nom : " + etudiant._postnom);
  print("Prenom : " + etudiant._prenom);
  print("Age : " + etudiant._age.toString() + " ans");
  print("Date de naissance : " + etudiant._dateNaissance);
  print("Sexe : " + etudiant._sexe);
  print("Poids : " + etudiant._poids.toString() + " kg");
  print("Taille : " + etudiant._taille.toString() + " m");
}

String minOrMaj(int age) {
  String response = "";
  if (age >= 18) {
    response = "Vous etes majeur";
  } else if (age >= 1 && age < 17) {
    response = "Vous etes mineur";
  }
  return response;
}

void bonjourMonde(int count) {
  for (var i = 0; i < count; i++) {
    print("Bonjour le monde");
  }
}

String secondDegre(double a, double b, double c) {
  String response = "";
  if (a <= 0 || b <= 0 || c <= 0) {
    response = "Parametres de l'equation invalides";
  } else {
    double delta = (pow(b, 2) - (4 * a * c));
    double x1;
    double x2;
    if (delta == 0) {
      x1 = (-b / (2 * a));
      x2 = x1;
      response = "Delta = $delta X1 = $x1 x2 = $x2";
    } else if (delta < 0) {
      response = "Cas non traité";
    } else if (delta > 0) {
      x1 = (-b + sqrt(delta) / 2 * a);
      x2 = (-b - sqrt(delta) / 2 * a);

      response = "Delta = $delta X1 = $x1 x2 = $x2";
    }
  }
  return response;
}

double moyenne(int a, int b, int c, int d, int e) {
  double moyenne;
  moyenne = (a + b + c + d + e) / 5;
  return moyenne;
}

int facto(int num) {
  int factoriel = 1;

  for (var i = 1; i <= num; i++) {
    factoriel = factoriel * i;
  }
  return factoriel;
}
