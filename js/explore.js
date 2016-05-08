// input: a string ("hello")
  //determine the index of each letter (h = 0, e = 1, l = 2, l = 3, o = 4)
  //determine the length of the word (5)
  //loop through each letter in the word hello
    //subtract: length of word (5) - index position of letter
    //the return of this value = the new index position for that letter
      //h = index 0 
      //5 - 0 = 5
      //now h = index 5
      //e = index 1
      //5 - 1 = 4
      // now e = index 4
    //print the new string, with the letters having their newly assigned indices


//note: my pseducode completely backfired because I soon realized after trying to implement that solution that
//I do not yet know how to do some of those functions in java script


//My adjusted solution
function reverse(string) {
  var str = string;
  var word = '';
  for (var i = str.length -1; i >= 0; i--) {
    word = word + str[i]
  }
console.log(word);
}

//Driver code
var telephone = "telephone"
reverse(telephone)

if (2<5 && 10 >= 4) {
    console.log(telephone);
} else if (5>8) {
    console.log("Never!");
} else {
    console.log("Never as well!")
}