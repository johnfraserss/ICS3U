/* import RiTa library */
let rita = require('rita');

/* take a sentence and split it up into tokens for analysis */
let rTokens = rita.tokenize("The elephant took a bite!");

/* print the tokens (an array of RiTa Strings in this case) */
console.log(rTokens);
