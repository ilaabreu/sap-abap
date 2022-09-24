*18. A jornada de trabalho semanal de um funcionário é de 40 horas.
*O funcionário que trabalhar mais de 40 horas receberá hora extra, cujo cálculo é o valor da hora regular com um acréscimo de 50%.
*Escreva um algoritmo que leia o número de horas trabalhadas em um mês.
*O salário por hora e escreva o salário total do funcionário, que deverá ser acrecido das horas extras, caso  tenham sidos trabalhadas
*Considere que o mês possua 4 semanas exatas.

REPORT zz_exerc18_15.
DATA:       v_preco_hora_extra  TYPE p DECIMALS 2,
            v_valor_total_extra TYPE p DECIMALS 2,
            v_qtd_hora_extra    TYPE p DECIMALS 2,
            v_salario_final     TYPE p DECIMALS 2.
CONSTANTS:  c_jornada           TYPE i VALUE 40.
PARAMETERS: p_hr_trb TYPE i,
            p_sal_hr TYPE p DECIMALS 2.
PERFORM f_salario.
FORM    f_salario .
  IF p_hr_trb > 160.
    v_preco_hora_extra  = p_sal_hr + ( p_sal_hr * ( 50 / 100 ) ). "calcula o preço da hora extra
    v_qtd_hora_extra    = p_hr_trb - 160.
    v_valor_total_extra = v_preco_hora_extra * v_qtd_hora_extra.
    v_salario_final     = ( ( 160 * p_sal_hr )  + v_valor_total_extra ).
    WRITE:/ 'Valor hora extra: ', v_preco_hora_extra,
          / 'Total hora extra: ', v_valor_total_extra,
          / 'Salário Final: '   , v_salario_final.
  ELSE.
    v_salario_final     = ( p_hr_trb * p_sal_hr ).
    WRITE:/ 'Salário Final: ', v_salario_final,
          / 'Funcionário não possui hora extra'.
  ENDIF.
ENDFORM.
