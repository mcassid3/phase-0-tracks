// Longest word - initial pseudocode
// Goal: return longest word in an array of strings
//input: array of strings
  //determine the number of strings in the array by calculating length
  //set the initial longest word to the first word
  //loop through the remaining words
    //if any of the words are longer than the length of the first word
    //set this new word as the longest word
//output: a string that is the longest word in the original array

function find_longest_word(array_of_words) {
  var length_of_array = array_of_words.length;
  longest_word = array_of_words[0];

  for(var i =1; i<length_of_array; i++) {
      length_of_next_word = array_of_words[i].length
      if (length_of_next_word > longest_word.length) {
        longest_word = array_of_words[i];
      } 
  }
  console.log(longest_word);
}

// Find pairs initial pseudocode
//inputs: 2 objects (hash-like)
//set number of matches variable to 0
  //iterate through the first hash's values
    // with the first hash value
      //iterate through the second hash
        //if it matches any of the hash 2 values
          //increment the number of matches variables
        //else if no matches in hash 2's set of values
          //move to next value
  //if number of matches >0
    //return True
  //else
    //return false
//outputs: True if has any matches, false if none

function find_pairs(object1,object2) {

var object1 = object1
var object2 = object2

var keys1 = Object.keys(object1);
var keys2 = Object.keys(object2);
var any_matches = false;
var y = 0;

for (var x=0; x < keys1.length; x++) {
   if (object1[keys1[x]] == object2[keys2[x]]) {
     any_matches = true;
   } else {
        for (y=1; y<keys2.length; y++) {
              if (object1[keys1[x]] == object2[keys2[y]]) {
              any_matches = true;
              }  
        }
     }
}
console.log(any_matches);

}

function random_data(number_of_words) {
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var text = [];

    for (y=0; y < number_of_words; y++) {
    var new_word = "";
    var length_of_new_word = Math.floor((Math.random() * 10) + 1);

      for(var i = 0; i < length_of_new_word; i++) {
          var random_letter = alphabet[(Math.floor(Math.random()*26))];
          new_word += random_letter;
      }
  text.push(new_word);
 }
return text
}

////Driver code to test longest_word
//find_longest_word(["apples","water","ham"])
//find_longest_word(["apple","water","hamburger"])
//find_longest_word(["apples","watermelon","ham"])



////Driver code to detect pairs
//first_object = {name: "Mike", age: 2, height: 68};
//second_object = {name: "John", age:35, height: 78};
//third_object = {name: "Mike", age:33, height: 73};
//fourth_object = {name: "Craig", age:2, height: 68};
//find_pairs(first_object,second_object);
//find_pairs(first_object,third_object);
//find_pairs(second_object ,third_object);
//find_pairs(fourth_object,third_object);
//find_pairs(fourth_object,first_object);

//Driver code to test random_data
//for (i=0; i<2; i++) {
//  array_size = Math.floor((Math.random() * 10) + 1);
//  array = random_data(array_size);
//  console.log(array);
//  find_longest_word(array);
//}