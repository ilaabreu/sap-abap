*7. Ler dois valores inteiros distindos e apresentar o maior dos dois números.

REPORT ZZ_EXERC07_15.
PARAMETERS: p_valor1 TYPE i,
            p_valor2 TYPE i.
PERFORM f_verf_valor.
FORM f_verf_valor.
  IF p_valor1 = p_valor2.
    WRITE: 'Os valores inseridos são iguais'.
    ELSEIF p_valor1 > p_valor2.
    WRITE: 'O maior valor inserido foi:', p_valor1.
    ELSE.
      WRITE: 'O maior valor inserido foi:', p_valor2.
  ENDIF.
ENDFORM.
