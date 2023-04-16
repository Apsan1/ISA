console.log('Welcome to Guessing Game')
function guess(random) {
  let i
  for (i = 0; i < 100; i++) {
    console.log('The answer is:',random)//for testing
    var a = prompt('Guess a number: ')
    if (a == random) {
      console.log('You guessed the number!!')
      return i
    } else {
      console.log('Wrong Guess! Try again.')
      continue
    }
  }
  return i
}

function endGame(score) {
  const final = 100 - score
  console.log('Your score is:', final)
}

const random = Math.floor(Math.random() * 100) + 1;
const score = guess(random)
endGame(score)