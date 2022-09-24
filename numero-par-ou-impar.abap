*8.Ler um número inteiro e apresentar uma mensagem informando se o número é par ou ímpar.

REPORT ZZ_EXERC08_15.
PARAMETER: p_valor TYPE i.
PERFORM f_verf_valor.
FORM f_verf_valor.
  IF p_valor mod 2  = 0.
    WRITE: 'O número inserido é PAR'.
    ELSE.
      WRITE: 'O número inserido é IMPAR'.
  ENDIF.
ENDFORM.
