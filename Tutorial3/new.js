function add(x, y) {
    console.log(x + y);
  }
  
  function subtract(x, y) {
    console.log(x - y);
  }
  
  function divide(x, y) {
    console.log(x / y);
  }
  
  function multiply(x, y) {
    console.log(x * y);
  }
  
  add(10, 7)
  subtract(11, 5)
  divide(15, 3)
  multiply(10, 2)
  
  function converter(F){
     C = (F - 32) * 0.5556
     console.log(F,'°F Fahrenheit to Celcius is ',C ,'°C')
  }
  converter(15)
  
  function fact(x){
    factorial = 1;
    for (let i = 1; i < x+1 ; i++){
      factorial = i * factorial;
    }
    console.log(factorial);
  }
  fact(6)
  
  function prime(num){
    if (num == 1 || num == 2 || num == 3){
      console.log('It is a prime number.')
    }
    else if( num % 2 == 0 || num %3 == 0){
      console.log('It is not a prime number.')
    }
    else{
      console.log('It is a prime number.')
    }
  }
  prime(17)
  
  const array = [1,2,3,4];
  const newArray = array.map((num) => num * num);
  console.log(newArray);
  
  var arr = [1,2,3,4,-5,6,-7,8,-9,10];
  var sum = 0;
  for(var i=0; i<arr.length; i++){
      if(arr[i]>0){
          sum = sum + arr[i];
      }
    
  }
  console.log('The sum is: ', sum);
  
  