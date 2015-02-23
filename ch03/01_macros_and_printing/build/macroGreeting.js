(function () { "use strict";
var Example = function() { };
Example.f = function(s) {
	var date = new Date();
	var prs = "Hello from " + s + ". Time is: " + date.getHours() + ":" + date.getMinutes() + ". ";
	console.log(prs);
};
Example.main = function() {
	var language;
	language = "javascript";
	Example.f(language);
};
Example.main();
})();
