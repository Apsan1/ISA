console.log('Welcome to Guessing Game')

function guess(random) {
  for (let i = 0; i < 100;i++){
    console.log(random)
    var a = prompt('Guess a number: ')
    if (a == random){
      console.log('You guessed the number!!')
      return i
    }
    else{
      console.log('Wrong Guess! Try again.')
      continue
    }
  }
}

function endGame(score){
  final = 100 - score
  console.log('Your score was: ', final)
}


var random =  Math.floor(Math.random() * 100) + 1;
guess(random)
endGame(score)
