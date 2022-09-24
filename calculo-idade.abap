*5.Construir um algoritmo que leia o ano de nascimento de uma pessoa e o ano atual, calcule e mostre: 
*a) A idade dessa pessoa; 
*b) Quantos anos essa pessoa terá em 2015.

REPORT ZZ_EXERC05_15.
DATA: v_idade TYPE i,
      v_idade_2015 TYPE i.
PARAMETERS: p_nasc TYPE i,
            p_atual TYPE i.
PERFORM f_calc_idade.
FORM f_calc_idade.
  v_idade = p_atual - p_nasc.
  v_idade_2015 = 2015 - p_nasc.
  WRITE:/ 'Idade:',v_idade,
        / 'Idade em 2015:',v_idade_2015.
ENDFORM.
