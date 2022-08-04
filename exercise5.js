/**
 * The function below counts the number of distinct characters there are in the string.
 * @param {string} word 
 */
 function countDistinctChar(word) {

    if(!typeof(word) == "string") return "Please, write a string!"
    //The variable "letters" is an object in which the function will store the distinct letters from the variable "word".
    let letters = {};
    let result = "";

    for(char of word) {
        //This conditional checks if the letter already exists.
        if(!letters[char]) {
            letters[char] = 0
        }
        //It will increment the counting for each letter. 
        letters[char]++
    }

    for(key in letters) {
        result += `${key.toUpperCase()}=${letters[key]};`
    }

    console.log(result.slice(0,-1))
}

countDistinctChar('Paralalelepipedo')