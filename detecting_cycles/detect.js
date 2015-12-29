# finds the recurring pattern of integers
function find_cycle(data) {
  estimated_cycle = []
  data.forEach(function(item) {
    if(continues_cycle) {
      estimated_cycle << item
    }
  });
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
  if (line != "") {
    line.split(" ").forEach(find_cycle(data));
    console.log(result);
  }
);
