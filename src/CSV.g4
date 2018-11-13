grammar CSV;
csv  :  line+ ;           // match keyword hello followed by an identifier

line : ((WORD COMMA)* WORD NL?);

WS : [ \t\r]+ -> skip ;   // skip spaces, tabs

WORD : (LETTER|NUM)+ ;

COMMA : ',';

NL : [\n];

fragment
LETTER : ([a-z]|[A-Z])+;

fragment
NUM : [0-9]+;
