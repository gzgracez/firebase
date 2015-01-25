String ticker="SBUX";
String test[] = loadStrings("http://real-chart.finance.yahoo.com/table.csv?s=" + ticker + "&a=00&b=01&c=" + (year()-2) + "&d=" + (month()-1) + "&e=" + day() + "&f=" + year() + "&g=m&ignore=.csv"); //population
for (int i=0; i<test.length; i++) {
  String[] chunks = split(test[i], ',');
  println(chunks[0]);
}
