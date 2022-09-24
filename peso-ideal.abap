*9.Faça um algoritmo que leia a altura e o sexo de uma pessoa, calcule e mostre seu peso ideal. sabendo que:
*a) Para homens: (72,7 * h) - 58
*b) Para mulheres: (62,1 * h) - 44,7

REPORT zz_exerc09_15.
DATA: v_peso_ideal TYPE p DECIMALS 2.
CONSTANTS: c_peso_m TYPE p DECIMALS 2 VALUE '72.7',
           c_peso_f TYPE p DECIMALS 2 VALUE '61.2'.
PARAMETERS: p_altura  TYPE p DECIMALS 2,
            p_sexo(1) TYPE c.
PERFORM f_calc_peso.
FORM f_calc_peso.
  IF p_sexo = 'M'.
    v_peso_ideal = ( c_peso_m * p_altura ) - 58.
    WRITE:/ 'PESO IDEAL:', v_peso_ideal.
  ELSEIF p_sexo = 'F'.
    v_peso_ideal = ( c_peso_f * p_altura ) - 44.
    WRITE:/ 'PESO IDEAL:', v_peso_ideal.
    ELSE.
      WRITE:/ 'Insira M para Masculino | F para Feminino'.
  ENDIF.
ENDFORM.
