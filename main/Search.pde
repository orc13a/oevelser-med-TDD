String[] search(String[] list, String text) {
  String[] resultat = new String[0];
  if(text.equals("*")){
    resultat = list;
  } else if (text.length() >= 2) {
    for (String city : list) {
      if (city.contains(text)) {
        resultat = updateArray(resultat, city);
      }
    }
  }

  return resultat;
}

String[] updateArray(String[] array, String value) {
  String[] newArray = new String[array.length + 1];

  for (int i = 0; i < array.length; i++) {
    newArray[i] = array[i];
  }
  newArray[newArray.length-1] = value;
  return newArray;
}
