let textual = '{"course" : "intro to databases", "grade" : 70 }';

let object = JSON.parse(textual);

console.log('You got ' + object.grade + ' in ' + object.course);

object.grade = 80;

console.log('Storing ' + JSON.stringify(object));
