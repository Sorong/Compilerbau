/**
 * Define a grammar called Four
 */
grammar Four;
input  :  IN+;           // match keyword hello followed by an identifier

IN : WS | COMPARISON | IF | THEN | ELSE | NAME | REAL;

WS : [ \t\r\n]+ -> skip ;   // skip spaces, tabs, newlines

IF : 'if';

THEN : 'then';

ELSE : 'else';

NAME : (LETTER|NUM) {} ; //GG Underscore

fragment
LETTER : ([a-z]|[A-Z])+;

REAL : NUM DOT NUM'E'('+'|'-')NUM;

fragment
NUM : [0-9]+;

fragment
DOT: '.';

COMPARISON : LESS | GREATER | LESS EQUAL | GREATER EQUAL | EQUAL EQUAL | LESS GREATER;

fragment
LESS : '<';

fragment
GREATER : '>';

fragment
EQUAL : '=';

//NUM : \d+.\d+E(+|-)\d+;//'\\d'+'.''\\d'+'E'('+'|'-')'\\d'+ ;


