grammar SimpleGrammar;

expr : term OPEN fact dec fact CLOSE;
term : IF 
         | ELSE
         | ELSEIF
         ;
fact : NUM
         | VAR
         | (expr)
         ;
dec: MAIOR
       | MENOR
       | MAIORIG
       | MENORIG
       ;

NUM : [0-9]+;
VAR : [a-zA-Z]+;
OPEN: '(';
CLOSE: ')';
IF: 'if';
ELSE: 'else';
ELSEIF: 'elseif';
MAIOR: '>';
MENOR: '<';
MAIORIG: '>=';
MENORIG: '<=';