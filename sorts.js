var myApp = myApp || {}

Array.prototype.bubbleSort = function() {

  while (isOrdered(this) !== true ) {
    console.log("hi");
    for (i = 0; i < this.length; i++) {
      console.log(i);
      var tempArray = compareTwo(this[i], this[i + 1]);
      this[i] = tempArray[0];
      this[i + 1] = tempArray[1];

    }
    console.log("hello");
  }

};

var compareTwo = function(elem1, elem2) {

  if (elem1 > elem2) {
    return [elem2, elem1];
  } else {
    return [elem1, elem2];
  }

};

var isOrdered = function(array) {

  for (i = 0; i < (array.length - 1); i++) {
    if (array[i] < array[i + 1]) {
    } else {
      return false;
    }
  }

  return true;
};

var my_array1 = [1, 1, 3, 5, 4, 7, 13, 2, 9, 7, 5, 4, 7, 13, 100, 33, 45];
var my_array2 = [1, 2, 1, 3, 5];

console.log(my_array2);
my_array2.bubbleSort();













// node sorts.js


// Array.prototype.insertionSort = function() {

// };

// Array.prototype.BubleSort = function() {

// };
