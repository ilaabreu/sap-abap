*6. Efetuar a leitura de um determinado valor e apresenta-lo, caso não seja maior que três.

REPORT zz_exerc06_15.
PARAMETERS: p_valor TYPE i.
PERFORM f_verf_valor.
FORM f_verf_valor.
  IF p_valor <= 3.
    WRITE:/ 'Valor inserido:', p_valor.
    ELSE.
      WRITE:/ 'Valor digitado maior que 3:'.
  ENDIF.
ENDFORM.
