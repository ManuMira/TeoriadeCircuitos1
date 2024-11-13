function result = convertir_impedancia(tipo, a, b)
  % convertir_impedancia: Convierte una impedancia entre formas polar y rectangular.
  % - tipo: 'polar' para convertir de polar a rectangular, 'rect' para convertir de rectangular a polar
  % - a, b: Los parámetros de la forma de entrada
  %     - Si tipo = 'polar', a = magnitud y b = ángulo (en grados).
  %     - Si tipo = 'rect', a = parte real y b = parte imaginaria.
  % Retorna un vector:
  % - Si convierte a rectangular, retorna [real, imag].
  % - Si convierte a polar, retorna [magnitud, ángulo] (ángulo en grados).

  if strcmp(tipo, "polar")
    % Convertir de polar a rectangular
    magnitud = a;
    angulo = deg2rad(b);  % Convertir ángulo a radianes
    real = magnitud * cos(angulo);
    imag = magnitud * sin(angulo);
    result = [real, imag];
  elseif strcmp(tipo, "rect")
    % Convertir de rectangular a polar
    real = a;
    imag = b;
    magnitud = abs(real + 1j * imag);
    angulo = rad2deg(arg(real + 1j * imag));  % Convertir ángulo a grados
    result = [magnitud, angulo];
  else
    error("Formato no válido. Usa 'polar' o 'rect' como primer argumento.");
  end
end
