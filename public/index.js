const timeTaken = document.getElementById("time-taken");

// memory for assemblyscript
var memory = null;
const wasm = fetch("optimized.wasm");

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

function ASBubbleSort(array) {
  (async () => {
    const { instance } = await loader.instantiate(wasm);

    console.log(instance);

    const { ASbubbleSort, Int32Array_ID } = instance.exports;
    const { __newArray } = instance.exports;
    const { __getArray } = instance.exports;

    const importArrPtr = __newArray(Int32Array_ID, array);
    const exportedArrayPtr = ASbubbleSort(importArrPtr);
    const values = __getArray(exportedArrayPtr);
    console.log(values);
  })();
}

function start() {
  const shuffledArray = shuffle([...Array(4000).keys()]);

  JSBubbleSort(shuffledArray);

  ASBubbleSort(shuffledArray);
}

document.querySelector("button").addEventListener("click", start);
