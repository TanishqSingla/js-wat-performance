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

function start() {
  const array = shuffle([...Array(100).keys()]);
  console.log(array);
}
