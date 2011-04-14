import wordcram.*;
import wordcram.text.*; 

size(300, 300);
background(000);

String lines[] = loadStrings("redbridge-summaries.txt");

String allsummaries = join(lines, ' ');


    
  new WordCram(this).fromTextString(allsummaries)
      .lowerCase()
      .withPlacer(Placers.centerClump())
      .withFont(createFont("./League_Gothic-webfont.ttf", 1))
      .withColors(#FFFFFF, #8A3636, #CCCC33)
      .sizedByWeight(1,70)
      .drawAll();

  save("redfoir-summary.png");

  

