*14.Faça um algoritmo que leia dois números inteiros e imprima duas sequencias:
*a) A primeira sequencia vai do menor número até o maior número.
*b) E a segunda sequencia vai do maior numero até o menor número.

REPORT ZZ_EXERC14_15.
DATA: v_contador  TYPE i,
      v_contador2  TYPE i.
PARAMETERS: p_num1  TYPE i OBLIGATORY,
            p_num2  TYPE i OBLIGATORY.
PERFORM f_exibe_seq.
FORM f_exibe_seq.
  IF p_num1 < p_num2. "1º num for menor 1 - 5
    v_contador = p_num1.
    v_contador2 = p_num2.
    WHILE v_contador <= p_num2.
      WRITE: v_contador.
      v_contador = v_contador + 1.
    ENDWHILE.
    WRITE: /.
    WHILE v_contador2 >= p_num1.
      WRITE: v_contador2.
      v_contador2 = v_contador2 - 1.
    ENDWHILE.
    ELSEIF p_num2 < p_num1. "2º num for menor 5 - 1
    v_contador = p_num2.
    v_contador2 = p_num1.
    WHILE v_contador <= p_num1.
      WRITE: v_contador.
      v_contador = v_contador + 1.
    ENDWHILE.
    WRITE: /.
    WHILE v_contador2 >= p_num2.
      WRITE: v_contador2.
      v_contador2 = v_contador2 - 1.
    ENDWHILE.
  ENDIF.
ENDFORM.
