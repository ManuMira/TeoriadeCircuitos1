function Req = par(varargin)
    % Esta función calcula la resistencia equivalente en paralelo
    % a partir de un número variable de resistencias.

    % Verificar que se hayan ingresado al menos dos resistencias
    if nargin < 2
        error('Se deben proporcionar al menos dos valores de resistencia.');
    end

    % Convertir los argumentos a un vector y verificar que sean positivos
    resistencias = cell2mat(varargin);
    if any(resistencias <= 0)
        error('Todas las resistencias deben ser valores positivos.');
    end

    % Calcular la resistencia equivalente en paralelo
    Req = 1 / sum(1 ./ resistencias);
end
