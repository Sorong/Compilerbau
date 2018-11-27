parser grammar FibonacciParser;

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

options { tokenVocab = FibonacciLexer; }

program
    :   statementList EOF
    ;

statement
    :   block
    |   variableStatement
    |   ifStatement
    |   returnStatement
    |   singleExpression
    //|   expressionStatement
    ;

block
    :   OpenBrace statementList? CloseBrace Semicolon?
    ;

statementList
    :   statement+
    ;

variableStatement
    :   Let Identifier (Assign singleExpression)+ //Eventuell ? statt +
    |   Let Identifier
    ;

ifStatement
    :   If OpenParen singleExpression CloseParen block (Else block)?
    ;

returnStatement
    : Return Number Semicolon
    ;




singleExpression
    :   Fn OpenParen formalParameter CloseParen block//OpenBrace functionBody CloseBrace
    |   Identifier Equals Number //x == y würde nicht gehen
    |   Identifier arguments//TODO: weiter
    |   Identifier Minus Number
    |   Plus singleExpression
    |   Number
    ;

arguments
    : OpenParen singleExpression? CloseParen Semicolon?
    ;

formalParameter
    :   Identifier //(x-1) würde so nicht gehen
    ;
/*
functionBody
    : statement?
    ;

expressionStatement
    : singleExpression
    ;
*/
