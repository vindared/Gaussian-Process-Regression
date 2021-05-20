%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vorlesung: Maschinelles Lernen in der Regelungstechnik    %
% Lehrstuhl für Regelungstechnik                            %
% Tutor: Hartwig Huber, hartwig.huber@fau.de                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function gp = produceGaussian(x,theta)
% Generieren eines Zufallsprozess mit Gaussverteilung
%
%   Inputs:
%               x       ...     Vektor an Punkten an denen der GP ausgewertet wird
%               theta   ...     Hyperparameter gemaess dem Kern
%
%   Outputs:
%               gp      ...     Zufallsprozess ausgewertet an den Punkten aus x

    
    % Generieren eines zufaelligen Prozesses
    K = zeros(length(x),length(x));
    for i = 1:length(x)
        for j = 1:length(x)
            K(i,j) = GPkern(x(i),x(j),theta);
        end
    end
    gp(:,1) = chol(K+1e-9*eye(length(x)))'*randn(length(x),1);
end
