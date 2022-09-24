*17. Escrever um algoritmo que gera e escreve os números ímpares entre 100 e 200.

REPORT zz_exerc17_15.
DATA: v_valor TYPE i VALUE 100.
PERFORM f_loop.
FORM f_loop.
  WHILE v_valor <= 200.
    IF v_valor MOD 2  = 1.
      WRITE:/ v_valor.
    ENDIF.
    v_valor = v_valor + 1.
  ENDWHILE.
ENDFORM.
