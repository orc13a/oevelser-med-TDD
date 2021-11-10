void runAllTests() {
  oneCharacterTest(cities, "D");
  twoCharacterTest(cities, "ape");
  twoCharacterTest(cities, "VA");
  twoCharacterTest(cities, "New York City");
  twoCharacterTest(cities, "L");
}

void oneCharacterTest(String[] list, String text) {
  println("-Running One Character Test-");
  String[] result = search(list, text);
  if (result == null) {
    println("Success");
  } else if (result.length == 0) {
    println("Success");
  } else {
    println("fails");
  }
}

void twoCharacterTest(String[] list, String text) {
  println("-Running Two Character Test-");
  String[] result = search(list, text);

  if (result == null) {
    println("Fails");
  } else if (result.length > 0) {
    println("Success");
  } else {
    println("Fails: ingen resultater");
  }
}
