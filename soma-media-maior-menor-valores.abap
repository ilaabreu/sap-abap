*15.Faça um algoritmo que receba 5 números inteiros positivos, calcule e mostre:
*a) A soma dos números digitados
*b) A média dos números digitados
*c) O maior número digitado
*d) O menor número digitado
*e) A média dos números pares

REPORT zz_exerc15_15.
DATA: v_soma        TYPE i,
      v_media       TYPE p DECIMALS 2,
      v_maior       TYPE i,
      v_menor       TYPE i,
      v_media_pares TYPE p DECIMALS 2,
      v_contador    TYPE i VALUE 0,
      v_contador2   TYPE i VALUE 0.
PARAMETERS: p_num1 TYPE i,
            p_num2 TYPE i,
            p_num3 TYPE i,
            p_num4 TYPE i,
            p_num5 TYPE i.
START-OF-SELECTION.
  PERFORM f_soma_pares.
  PERFORM f_verf_maior.
  PERFORM f_verf_menor.
  PERFORM f_verf_valores.
FORM f_verf_valores.
  v_soma = p_num1 + p_num2 + p_num3 + p_num4 + p_num5.
  WRITE:/ 'A soma dos valores: ', v_soma.
  v_media = ( p_num1 + p_num2 + p_num3 + p_num4 + p_num5 ) / 5.
  WRITE:/ 'A média dos valores: ', v_media.
  v_media_pares = v_contador / v_contador2.
  WRITE:/ 'A média dos valores pares: ', v_media_pares.
  WRITE:/ 'O maior número digitado foi: ', v_maior.
  WRITE:/ 'O menor número digitado foi: ', v_menor.
ENDFORM.
FORM f_soma_pares.
  IF p_num1 MOD 2 = 0.
    v_contador = v_contador + p_num1.
    v_contador2 = v_contador2 + 1.
  ENDIF.
  IF p_num2 MOD 2 = 0.
    v_contador = v_contador + p_num2.
    v_contador2 = v_contador2 + 1.
  ENDIF.
  IF p_num3 MOD 2  = 0.
    v_contador = v_contador + p_num3.
    v_contador2 = v_contador2 + 1.
  ENDIF.
  IF p_num4 MOD 2 = 0.
    v_contador = v_contador + p_num4.
    v_contador2 = v_contador2 + 1.
  ENDIF.
  IF p_num5 MOD 2 = 0.
    v_contador = v_contador + p_num5.
    v_contador2 = v_contador2 + 1.
  ENDIF.
ENDFORM.
FORM f_verf_maior.
  IF p_num1 => p_num2. "1 é maior
    IF p_num1 => p_num3.
      IF p_num1 => p_num4.
        IF p_num1 => p_num5.
          v_maior = p_num1.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDIF.
  IF p_num2 => p_num1. "2 é maior
    IF p_num2 => p_num3.
      IF p_num2 => p_num4.
        IF p_num2 => p_num5.
          v_maior = p_num2.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDIF.
  IF p_num3 => p_num1. "3 é maior
    IF p_num3 => p_num2.
      IF p_num3 => p_num4.
        IF p_num3 => p_num5.
          v_maior = p_num3.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDIF.
  IF p_num4 => p_num1. "4 é maior
    IF p_num4 => p_num2.
      IF p_num4 => p_num3.
        IF p_num4 => p_num5.
          v_maior = p_num4.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDIF.
  IF p_num5 => p_num1. "5 é maior
    IF p_num5 => p_num2.
      IF p_num5 => p_num3.
        IF p_num5 => p_num4.
          v_maior = p_num5.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDIF.
ENDFORM.
FORM f_verf_menor.
  IF p_num1 <= p_num2. "1 é menor
    IF p_num1 <= p_num3.
      IF p_num1 <= p_num4.
        IF p_num1 <= p_num5.
          v_menor = p_num1.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDIF.
  IF p_num2 <= p_num1. "2 é menor
    IF p_num2 <= p_num3.
      IF p_num2 <= p_num4.
        IF p_num2 <= p_num5.
          v_menor = p_num2.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDIF.
  IF p_num3 <= p_num1. "3 é menor
    IF p_num3 <= p_num2.
      IF p_num3 <= p_num4.
        IF p_num3 <= p_num5.
          v_menor = p_num3.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDIF.
  IF p_num4 <= p_num1. "4 é menor
    IF p_num4 <= p_num2.
      IF p_num4 <= p_num3.
        IF p_num4 <= p_num5.
          v_menor = p_num4.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDIF.
  IF p_num5 <= p_num1. "5 é menor
    IF p_num5 <= p_num2.
      IF p_num5 <= p_num3.
        IF p_num5 <= p_num4.
          v_menor = p_num5.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDIF.
ENDFORM.
