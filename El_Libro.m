% 
% Title                :El libro
% Description          :Script para definir y solucionar variable, funcion, dominio y rango
% Authors              :Atzimba Joice Martinez Huitron
%                      :Ana Cristina Franco Gonzales
%                      :Francelly Desiree Colin Sandoval
% Date                 :20211014
% Version              :1
% Usage                :octave> /path/El_Libro
%Cada una de las páginas de un libro debe tener 600 centímetros cuadrados de área, con márgenes  de  dos centímetros a los  lados y tres centímetros  arriba y  abajo, encuentra las dimensiones de la página para que permita la mayor área impresa posible.

% limpiar variables
clear
% Ejemplo de mayor area posible
% Rango de 4..35 en i= 0.1
x=4:0.1:35;

% Valor de la funcion 
ax= @(x) (-6.*x) + (624) - (2400./(x));

% Funcion a plotear
ax=(-6*x) + 624 - (2400./(x));

% Funcion para determinar valor maximo
resr =max(ax);

% Calcular el valor de x
% Decimos que A'(x)= -6 + 2400/x^2=0
% Por lo tanto x^2= 2400/6=400
% Despejando a X nos queda : x=√400=20
disp('solucion: ');
disp('El valor de x (ancho de la pagina)es:');
X= sqrt(400) 
disp ('El ancho de la pagina impresa es: ');
X - 4



% Calcular el valo de y
% sabemos que y =600/x
disp('El valo de y (altura de la pagina) es:');
y = 600/(X)
disp('la altura de la pagina impresa es:');
y - 6

% dibujar X y Y
plot(x,ax);

% Titulo
title(['Area maxima impresa =' num2str(resr)]);

% Etiqueta para x
xlabel(['Valor de X=' num2str(X)]);

% Etiqueta para y
ylabel(['Valor de Y=' num2str(y)]);
