*2. Considerando A = 3, B = 2, C = 5, determine como Verdadeiro ou Falso:
*a) A > B
*b) B = A
*c) (A >= B) AND (C <> 5)
*d) (B < A) OR (A = 3)
*e) (A > B) OR (A = 3)
*f) (C <= 7) AND (B > 0) AND (C > A)

REPORT zz_exerc02_15.
DATA: a TYPE i VALUE 3,
      b TYPE i VALUE 2,
      c TYPE i VALUE 5.
* a) A > B - VERDADEIRO
IF a > b.
  WRITE:/ 'VERDADEIRO'.
ELSE.
  WRITE:/ 'FALSO'.
ENDIF.
* b) B = A - FALSO
IF b = a.
  WRITE:/ 'VERDADEIRO'.
ELSE.
  WRITE:/ 'FALSO'.
ENDIF.
* c) (A >= B) AND (C <> 5) - FALSO
IF ( a >= b ) AND ( c <> 5 ).
  WRITE:/ 'VERDADEIRO'.
ELSE.
  WRITE:/ 'FALSO'.
ENDIF.
*d) (B < A) OR (A = 3) - VERDADEIRO
IF ( B < A ) OR ( A = 3 ).
  WRITE:/ 'VERDADEIRO'.
ELSE.
  WRITE:/ 'FALSO'.
ENDIF.
* e) (A > B) OR (A = 3) - VERDADEIRO
IF ( A > B ) OR ( A = 3 ).
  WRITE:/ 'VERDADEIRO'.
ELSE.
  WRITE:/ 'FALSO'.
ENDIF.
* f) (C <= 7) AND (B > 0) AND (C > A) - VERDADEIRO
IF ( C <= 7 ) AND ( B > 0 ) AND ( C > A ).
  WRITE:/ 'VERDADEIRO'.
ELSE.
  WRITE:/ 'FALSO'.
ENDIF.
