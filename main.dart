
void main(List<String> arguments) {
  Map<String,String> stringNameByState = {
    "Msk": "Moscow",
    "St": "Petersburg",
    "Ek": "Ekaterinburg",
    "Now": "Nowgorod"
  };

  stringNameByState["Ta"] = "Tagil";

  for (var key in stringNameByState.keys) {
    print(stringNameByState[key]);    
  }

  print("\nGet just one:${stringNameByState["St"]}");
}

