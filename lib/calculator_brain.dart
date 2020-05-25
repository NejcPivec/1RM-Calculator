class CalculatorBrain {
  CalculatorBrain({this.weightLifted, this.repsLifted});

  final int weightLifted;
  final int repsLifted;

  int calculatedRM;
  int calculated2RM;
  int calculated3RM;
  int calculated4RM;
  int calculated5RM;
  int calculated6RM;
  int calculated7RM;
  int calculated8RM;

  int calculateRM() {
    var calculatedRM = (weightLifted * (1 + (repsLifted / 30))).round();
    return calculatedRM;
  }

  int calculate2RM() {
    var calculated2RM = (weightLifted * (1 + (repsLifted / 30))) * 0.95;
    return calculated2RM.round();
  }

  int calculate3RM() {
    var calculated3RM = (weightLifted * (1 + (repsLifted / 30))).round() * 0.90;
    return calculated3RM.round();
  }

  int calculate4RM() {
    var calculated4RM = (weightLifted * (1 + (repsLifted / 30))).round() * 0.88;
    return calculated4RM.round();
  }

  int calculate5RM() {
    var calculated5RM = (weightLifted * (1 + (repsLifted / 30))).round() * 0.85;
    return calculated5RM.round();
  }

  int calculate6RM() {
    var calculated6RM = (weightLifted * (1 + (repsLifted / 30))).round() * 0.84;
    return calculated6RM.round();
  }

  int calculate7RM() {
    var calculated7RM = (weightLifted * (1 + (repsLifted / 30))).round() * 0.83;
    return calculated7RM.round();
  }

  int calculate8RM() {
    var calculated8RM = (weightLifted * (1 + (repsLifted / 30))) * 0.82;
    return calculated8RM.round();
  }
}
