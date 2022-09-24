*3.Construir um algoritmo que calcule a área de um triângulo. (area = (altura * base) / 2)

REPORT zz_exerc03_15.
DATA: v_area TYPE i.
PARAMETERS: p_altura TYPE i,
            p_base   TYPE i.
START-OF-SELECTION.
  PERFORM f_calc_area.
FORM f_calc_area.
  v_area = ( p_altura * p_base ) / 2.
  WRITE:/ 'A área do triângulo é: ', v_area, 'm2'.
ENDFORM.
