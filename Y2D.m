## -*- texinfo -*-
## @deftypefn  {} {[@var{za}, @var{zb}, @var{zc}] =} Y2D (@var{z1}, @var{z2}, @var{z3})
## @deftypefnx {} {@var{z} =} Y2D (@var{z1}, @var{z2}, @var{z3})
## Convierte un circuito en configuración estrella a triángulo.
##
## @var{z1}, @var{z2}, @var{z3} representan las impedancias del sistema conectado en estrella.
## @var{za}, @var{zb}, @var{zc} representan las impedancias del sistema triángulo equivalente.
##
## Si se solicita un único argumento de retorno, entonces se devuelve un vector
## @var{z} donde cada elemento representa una impedancia.
## (@var{za}, @var{zb}, @var{zc}).
## @end deftypefn

## Author: Gustavo Albarrán

function [za, zb, zc] = Y2D(z1, z2, z3)

  if (nargin != 3)
    error ("Y2D: Se deben pasar 3 argumentos: Z1, Z2, Z3");
  endif

  za = (z1*z2+z1*z3+z2*z3)/z3;
  zb = (z1*z2+z1*z3+z2*z3)/z2;
  zc = (z1*z2+z1*z3+z2*z3)/z1;

  if (nargout <= 1)
    za = [za, zb, zc];
  endif

endfunction
