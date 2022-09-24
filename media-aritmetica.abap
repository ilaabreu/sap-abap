*4.Construir um algoritmo que leia quatro notas e imprima a média aritmética do aluno.

REPORT ZZ_EXERC04_15.
DATA: v_media TYPE p DECIMALS 2.
PARAMETERS: p_nota1 TYPE p DECIMALS 2,
            p_nota2 TYPE p DECIMALS 2,
            p_nota3 TYPE p DECIMALS 2,
            p_nota4 TYPE p DECIMALS 2.
START-OF-SELECTION.
  PERFORM f_calc_media.
FORM f_calc_media.
  v_media = ( p_nota1 + p_nota2 + p_nota3 + p_nota4 ) / 4.
  WRITE:/ 'A média do aluno é: ', v_media.
ENDFORM.
