//Create a function called getFruit that takes in a fruit name as a parameter and returns a Promise that resolves after 1 second with a message saying "Here is your [fruit]". If the fruit name is "watermelon", the Promise should reject after 2 seconds with an error message saying "Sorry, we're out of watermelons
//Call the function and use the .then and .catch methods to handle the Promise.

// Path: Workshop4\new.js
function getFruit(fruit){
    return new Promise((resolve,reject)=>{
        setTimeout(()=>{
            if (fruit == "watermelon"){
                reject("Sorry, we're out of watermelons");
            }
            else{
                resolve("Here is your " + fruit);
            }
        },1000);
    }
    )
}
getFruit("apple").then((message).catch(err=> document.body.innerHTML=err));
