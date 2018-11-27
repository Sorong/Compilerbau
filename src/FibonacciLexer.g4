lexer grammar FibonacciLexer;
/*
let fibonacci = fn(x) {
    if (x == 0) {
        return 0;
    } else {
        if (x == 1) {
            return 1;
    } else {
        fibonacci(x - 1) + fibonacci(x - 2);
        }
    }
};

let wuppie = fibonacci(4);
*/


OpenParen: '(';

CloseParen: ')';

OpenBrace:  '{';

CloseBrace: '}';

Equals: '==';

Semicolon: ';';

Minus: '-';

Plus: '+';

Assign: '=';


/// Keywords
Let: 'let';

Fn : 'fn';

If : 'if';

Else: 'else';

Return: 'return';







/// Identifier Names and Identifiers
Identifier: Letter;

Number: Digit;

WS: [ \t\r\n]+ -> channel(HIDDEN);
/// Fragments
fragment
Letter : ([a-z]|[A-Z])+;


fragment
Digit : ([0-9])+;