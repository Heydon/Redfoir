// simile timeline initialisation
function onLoad() {
   var eventSource = new Timeline.DefaultEventSource(0);
   var bandInfos = [
     Timeline.createBandInfo({
         eventSource:    eventSource,
         date:           "Jan 1 2010 00:00:00 GMT",
         width:          "30%", 
         intervalUnit:   Timeline.DateTime.MONTH, 
         intervalPixels: 200,
		 overview:       true
     }),
     Timeline.createBandInfo({
         eventSource:    eventSource,
         date:           "Jan 1 2010 00:00:00 GMT",
         width:          "70%", 
         intervalUnit:   Timeline.DateTime.WEEK, 
         intervalPixels: 100
     })
     
   ];
   bandInfos[0].syncWith = 1;
   bandInfos[0].highlight = true;
   
   tl = Timeline.create(document.getElementById("timeline"), bandInfos, Timeline.HORIZONTAL);
   //tl.loadJSON("./data/redbridge-freedom-of-information-requests.json?t="+ (new Date().getTime()), function(json, url) {
   //             eventSource.loadJSON(json, url);
   //         });
   tl.loadJSON("./data/redbridge-freedom-of-information-requests.json?t="+ (new Date().getTime()), function(json, url) {
                eventSource.loadJSON(json, url);
            });
   //Timeline.loadXML("example1.xml", function(xml, url) { eventSource.loadXML(xml, url); });
 }