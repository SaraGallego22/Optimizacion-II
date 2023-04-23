%
% Copyright (c) 2015, Mostapha Kalami Heris & Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "LICENSE" file for license terms.
%
% Project Code: YPEA120
% Project Title: Non-dominated Sorting Genetic Algorithm II (NSGA-II)
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Cite as:
% Mostapha Kalami Heris, NSGA-II in MATLAB (URL: https://yarpiz.com/56/ypea120-nsga2), Yarpiz, 2015.
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

% Compara dos soluciones (individuos) en términos de dominancia de Pareto
function b = Dominates(x, y)

    if isstruct(x)
        x = x.Cost;
    end

    if isstruct(y)
        y = y.Cost;
    end

    b = all(x <= y) && any(x<y);
% Devuelve true si todos los elementos de x son menores o iguales a los 
% elementos correspondientes de y, y al menos un elemento de x es menor 
% que el correspondiente elemento de y
end