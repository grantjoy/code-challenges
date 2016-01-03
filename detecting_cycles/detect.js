log('wtf');

function find_cycle(seq) {
  for (var i = 0; i < seq.length; i++) {
    console.log(i);
    console.log(seq[i]);
  }
}

// var fs  = require("fs");
var data = ['1 2 3 3 3 3']; // fs.readFileSync(process.argv[2]).toString().split('\n')
data.forEach(function (line) {
  if (line != "") {
    var seq = line.split(" "); //.forEach(
    console.log(find_cycle(seq));
  }
});
