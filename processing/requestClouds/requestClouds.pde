import wordcram.*;
import wordcram.text.*; 

size(300, 300);
background(000);


//String lines[] = loadStrings("http://api.scraperwiki.com/api/1.0/datastore/getdata?format=csv&name=select_committee_evidence_1&limit=500");
String lines[] = loadStrings("requestsummaries.txt");



for (int i=0; i < 10; i++) {
  String row[] = split(lines[i], '|');
  new WordCram(this).fromTextString(row[1])
      .withPlacer(Placers.centerClump())
      .withFont(createFont("./League_Gothic-webfont.ttf", 1))
      .withColors(#8A3636, #CCCC33, #FFFFFF)
      .sizedByWeight(15,70)
      .drawAll();

  save("cram-"+ row[0] +".png");
  background(000);
  
}  
