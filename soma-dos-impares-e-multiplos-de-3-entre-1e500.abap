*16. Desenvolver um algoritmo que efetue a soma de todos os números ímpares que são múltiplos de três e que se encontram no conjunto dos números de 1 até 500.

REPORT zz_exerc16_15.
DATA: v_valor TYPE i VALUE 1,
      v_soma  TYPE i VALUE 0.
PERFORM f_loop.
FORM f_loop.
  WHILE v_valor <= 500.
    IF v_valor MOD 3  = 0 AND v_valor MOD 2 = 1.
      v_soma = v_soma + v_valor.
      WRITE: v_valor.
    ENDIF.
    v_valor = v_valor + 1.
  ENDWHILE.
  WRITE:/ 'A soma de todos os valores impares e múltiplos de 3 entre 1 e 500 é : ', v_soma.
ENDFORM.
