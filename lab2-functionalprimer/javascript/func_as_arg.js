// Create a list of integers from `a` to `b`, Haskell equivalent [a..b]
function arrFunc(a, b) {
    let arr = [];
    for (let i = a; i <= b; i++) {
        arr.push(i);
    }
    return arr;
}

// Generalized applicator function to calculate sum or average
function applicatorFunc(inpFunc, a, b, s) {
    const arr = inpFunc(a, b); // Generate the list dynamically
    let sum = arr.reduce((accumulator, currentValue) => accumulator + currentValue, 0);

    if (s === 's') {
        return sum; // Return the sum
    } else {
        return sum / arr.length; // Return the average
    }
}

// Using Node's readline module to take input from the command line
const readline = require('readline');
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Enter the starting number (a): ', (a) => {
    rl.question('Enter the ending number (b): ', (b) => {
        rl.question("Enter 's' for sum or any other key for average: ", (operation) => {
            // Convert input values to integers
            a = parseInt(a);
            b = parseInt(b);

            // Compute the result using the applicator function
            let result = applicatorFunc(arrFunc, a, b, operation);
            console.log(`Result: ${result}`);

            // Close the readline interface
            rl.close();
        });
    });
});
