function Z_eq = paralelo_impedancias(varargin)
  % paralelo_impedancias: Calcula la impedancia equivalente en paralelo
  % para impedancias complejas, permitiendo entradas en forma rectangular
  % o polar. Las impedancias se introducen como pares de argumentos:
  %   Si es en forma polar: ("polar", magnitud, ángulo)
  %   Si es en forma rectangular: ("rect", real, imag)

  % Convertir todas las impedancias a forma rectangular
  Z_rect = [];
  for i = 1:2:length(varargin)
    tipo = varargin{i};
    if strcmp(tipo, "polar")
      % Convertir de polar a rectangular
      magnitud = varargin{i+1};
      angulo = deg2rad(varargin{i+2});
      Z = magnitud * (cos(angulo) + 1j * sin(angulo));
    elseif strcmp(tipo, "rect")
      % Tomar directamente los valores rectangulares
      parte_real = varargin{i+1};
      parte_imag = varargin{i+2};
      Z = parte_real + 1j * parte_imag;
    else
      error("Formato no válido. Usa 'polar' o 'rect' como primer argumento en cada impedancia.");
    end
    Z_rect = [Z_rect, Z];
  end

  % Calcular la impedancia equivalente en paralelo
  Z_eq = 1 / sum(1 ./ Z_rect);
end
