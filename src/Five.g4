/**
 * Define a grammar called Four
 */
grammar Five;

@header {
package tools;
import java.util.*;
}
tokens { IF, ELSE, THEN }

@lexer::members {   // place this class member only in lexer
Map<String,Integer> keywords = new HashMap<String,Integer>() {{
    put("if", FiveParser.IF);
    put("else",   FiveParser.ELSE);
    put("then",    FiveParser.THEN);
}};
}

input  :  IN+;           // match keyword hello followed by an identifier

IN : WS | COMPARISON /*| IF | THEN | ELSE*/ | NAME | REAL;

WS : [ \t\r\n]+ -> skip ;   // skip spaces, tabs, newlines

NAME : (LETTER|NUM) { if ( keywords.containsKey(getText()) ) {
                                setType(keywords.get(getText()));
                            }
                        };

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



