const timeTaken = document.getElementById("time-taken");
const timeTakenAS = document.getElementById("time-taken-as");

import * as AsBind from "https://unpkg.com/as-bind@0.8.0/dist/as-bind.esm.js";

// memory for assemblyscript
var memory = null;

function shuffle(array) {
  let currentIndex = array.length - 1;
  do {
    let randomIndex = Math.floor(Math.random() * array.length);

    [array[currentIndex], array[randomIndex]] = [
      array[randomIndex],
      array[currentIndex],
    ];
  } while (currentIndex--);

  return array;
}

function JSBubbleSort(arr) {
  let startTime = new Date().getTime();

  for (let i = 0; i < arr.length; i++) {
    for (let j = 0; j < arr.length - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
      }
    }
  }

  timeTaken.innerHTML = `${new Date().getTime() - startTime}`;
}

async function ASBubbleSort(array) {
  const asBindInstance = await AsBind.instantiate(fetch("optimized.wasm"));
  let startTime = new Date().getTime();
  const sortedArray = asBindInstance.exports.ASbubbleSort(array);
  timeTakenAS.innerHTML = `${new Date().getTime() - startTime}`;
  console.log(sortedArray);
}

function start() {
  const shuffledArray = shuffle([...Array(4000).keys()]);

  JSBubbleSort(shuffledArray);

  ASBubbleSort(shuffledArray);
}

document.querySelector("button").addEventListener("click", start);
