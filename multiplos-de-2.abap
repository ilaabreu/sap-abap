*13.Construir um algoritmo que leia um número inteiro maior que zero e imprima a sequencia: 1, 2, 4, 8, 16, 32,... (múltiplos de 2) enquanto o valor for menor ou igual ao valor lido.
*Valor lido: 82.
*Sequencia impressa: 1, 2, 4, 8, 16, 32, 64.

REPORT zz_exerc13_15.
DATA: v_contador  TYPE i.
PARAMETERS: p_numero  TYPE i OBLIGATORY.
PERFORM f_mult.
FORM f_mult.
  IF p_numero > 0.
    v_contador = 1.
    WHILE v_contador <= p_numero.
      WRITE:/ v_contador.
      v_contador = v_contador * 2.
    ENDWHILE.
    ELSE.
       WRITE:/ 'Digite um número maior que 0.'.
  ENDIF.
ENDFORM.
