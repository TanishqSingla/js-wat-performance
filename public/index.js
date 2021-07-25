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
  for (let i = 0; i < arr.length; i++) {
    for (let j = 0; j < arr.length - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
      }
    }
  }
}

function start() {
  const array = shuffle([...Array(100).keys()]);
}
