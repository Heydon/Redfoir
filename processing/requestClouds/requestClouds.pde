import wordcram.*;
import wordcram.text.*; 

size(500, 300);
background(255);


//String lines[] = loadStrings("http://api.scraperwiki.com/api/1.0/datastore/getdata?format=csv&name=select_committee_evidence_1&limit=500");
String lines[] = loadStrings("http://spreadsheets0.google.com/pub?key=0Asg0mFH1ZjAYdE9yWWpFeDJUTWMzRmNrWDZYYzFSX1E&single=true&gid=0&range=B2:B20&output=txt");



for (int i=0; i < lines.length; i++) {
    
  new WordCram(this).fromTextString(lines[i])
      .withFont(createFont("./LiberationSerif-Regular.ttf", 1))
      .withColors(color(0, 250, 200), color(30), color(170, 230, 200))
      .sizedByWeight(1,50)
      .drawAll();

  save("wordcloud-"+(i+1)+".png");
  background(255);
  
}  
