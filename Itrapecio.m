%Trapecio compuesto
%datos de integracion funcion y datos de ingreso
function y=Itrapecio(fun,a,b)
%num de particiones
n=10;
%definir las variables
f0=subs(fun,a);
fn=subs(fun,b);
%cuanto va ser la base de los trapecios q se formaran
%bace=h
h=(b-a)/n;
%hay una sumatoria de funciones evaluados en distintos puntos
%acumular la suma
fs=0;
%desde 1 asta n-1
for i=1:n-1
    %definir los puntos de las particiones
    x(i)=a+h*i;
    %acumulamos la suma
    fs=fs+subs(fun,x(i));
end
%sumatoria
fs
%area
i=0.5*h*(f0+2*fs+fn)