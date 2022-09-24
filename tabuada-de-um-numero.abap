*12.Faça um algoritmo que apresente os resultados de uma tabuada para um número qualquer informado pelo usuário.
REPORT zz_exerc12_15.

DATA: v_resultado TYPE i,
      v_contador  TYPE i.
PARAMETERS: p_numero  TYPE i OBLIGATORY.
PERFORM f_tab.
FORM f_tab.
  v_contador = 0.
  WHILE v_contador <= 10.
    v_resultado = p_numero * v_contador.
    WRITE:/ p_numero,'X', v_contador, '=', v_resultado.
    v_contador = v_contador + 1.
  ENDWHILE.
ENDFORM.
