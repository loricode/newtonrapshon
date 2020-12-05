clc;
fprintf ("***METODO DE NEWTON RAPSHON***\n");

#tambien se puede utilizar   f  = input("escribe la funcion", "s")
f='7*e^(x)*sin(x)-1';
f = inline(f);

d='(7*e^(x)*(sin(x)+cos(x)))';
d = inline(d);

xi=0.0;

erro=0.1;

i=1;
#funcion que retorna el error aproximado
function ea = errora(xa, xp)
    ea = abs(((xa - xp)/xa)*100);
end

if d(xi) == 0
     fprintf ('no se puede hallar una raiz');

     else
          
          xn= xi-(f(xi)/d(xi));
          fprintf ("____________________________________________\n");
          fprintf("%s\t\t %s\t\t  %s\n",'I','XN','|EA|  ');
          fprintf ("____________________________________________\n");

          while errora(xn, xi) > erro
                fprintf('%.0f\t\t',i);
                fprintf('%.8f\t',xn);
                fprintf('%.8f\t',errora(xn,xi));
                fprintf ("\n");
                xi=xn;
                xn= xi-(f(xi)/d(xi));
                i++;

          endwhile
          
                fprintf('%.0f\t\t',i);
                fprintf('%.8f\t',xn);
                fprintf('%.8f\t',errora(xn, xi));
                fprintf ("\n");
              
                fprintf ("____________________________________________\n");
                fprintf('\nLA RAIZ APROXIMADA ES:  %.8f\n', xn);
            
endif
