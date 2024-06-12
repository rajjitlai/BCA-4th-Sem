// a program in javascript to generate series of prime numbers
// prime numbers under 100

/*
var num = 100;
var count = 0;
var flag = 0;

for (var i = 2; i <= num; i++) {
    for (var j = 2; j < i; j++) {
        if (i % j == 0) {
            flag = 1;
            break;
        }
    }
    if (flag == 0) {
        console.log(i);
        count++;
    }
    flag = 0;
}
*/

// program to display the current day and time in the following format.
// a. Sample Output: Today is: Tuesday

const today = new Date();
const options = { weekday: 'long' };
const dayName = today.toLocaleDateString('en-US', options);
console.log("Today is", dayName);

// b. Current time is: 10 PM: 30:38

const current_time = { hour: 'numeric', minute: 'numeric', second: 'numeric' };
const time = today.toLocaleTimeString('en-US', current_time);
console.log("Current time is", time);