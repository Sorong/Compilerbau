/**
 * Define a grammar called Four
 */
lexer grammar Five;
//input  :  IN+;           // match keyword hello followed by an identifier

//IN : WS | COMPARISON /*| IF | THEN | ELSE*/ | NAME | REAL;

WS : [ \t\r\n]+ -> skip ;   // skip spaces, tabs, newlines

NAME : (LETTER|NUM) -> pushMode(StringMode); //GG Underscore

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

mode StringMode;
  IF : 'if';
  ELSE : 'else';
  THEN : 'then';
  PUBLIC : 'public';
  PRIVATE : 'private';
  PROTECTED : 'protected';
  IDENTIFIER : . ->popMode;