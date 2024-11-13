## -*- texinfo -*-
## @deftypefn  {} {[@var{z1}, @var{z2}, @var{z3}] =} D2Y (@var{za}, @var{zb}, @var{zc})
## @deftypefnx {} {@var{z} =} D2Y (@var{za}, @var{zb}, @var{zc})
## Convierte un circuito en configuración triángulo a estrella.
##
## @var{za}, @var{zb}, @var{zc} representan las impedancias del sistema conectado en triángulo.
## @var{z1}, @var{z2}, @var{z3} representan las impedancias del sistema estrella equivalente.
##
## Si se solicita un único argumento de retorno, entonces se devuelve un vector
## @var{z} donde cada elemento representa una impedancia.
## (@var{z1}, @var{z2}, @var{z3}).
## @end deftypefn

## Author: Gustavo Albarrán

function [z1, z2, z3] = D2Y(za, zb, zc)

  if (nargin != 3)
    error ("D2Y: Se deben pasar 3 argumentos: ZA, ZB, ZC");
  endif

  z1 = za*zb/(za+zb+zc);
  z2 = za*zc/(za+zb+zc);
  z3 = zb*zc/(za+zb+zc);

  if (nargout <= 1)
    z1  = [z1, z2, z3];
  endif

endfunction
