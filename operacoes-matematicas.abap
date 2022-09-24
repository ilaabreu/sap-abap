*10.Faça um algoritmo para realizar operações mateméticas de soma, subtração, divisão, multiplicação e resto. O algoritmo deve ler dois operandos e o sinal correspondente à operação desejada, no final deve ser impresso o resultado.
REPORT zz_exerc10_15.

DATA: v_resultado TYPE p DECIMALS 2.
PARAMETERS: p_valor1  TYPE p DECIMALS 2 OBLIGATORY,
            p_valor2  TYPE p DECIMALS 2 OBLIGATORY,
            p_oprc(1) TYPE c OBLIGATORY.
PERFORM f_calc.
FORM f_calc.
  IF p_oprc = '+'.
    v_resultado = p_valor1 + p_valor2.
  ELSEIF p_oprc = '-'.
    v_resultado = p_valor1 - p_valor2.
  ELSEIF p_oprc = '*'.
    v_resultado = p_valor1 * p_valor2.
  ELSEIF p_oprc = '/'.
    v_resultado = p_valor1 / p_valor2.
  ELSEIF p_oprc = '%'.
    v_resultado = p_valor1 mod p_valor2.
  ENDIF.

  WRITE:/ 'RESULTADO:',
        / p_valor1, p_oprc, p_valor2, '=', v_resultado.
ENDFORM.
