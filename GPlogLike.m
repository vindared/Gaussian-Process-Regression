%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vorlesung: Maschinelles Lernen in der Regelungstechnik    %
% Lehrstuhl für Regelungstechnik                            %
% Tutor: Hartwig Huber, hartwig.huber@fau.de                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function y = GPlogLike(theta,X,Y)
% Returns the negative log-Likelihood-Funktion
    N = length(X);
    
    % Calc C
    C = zeros(N,N);
    for i = 1:N
        for j = 1:N
            C(i,j) = GPkern(X(i),X(j),[theta(1),theta(2)]);
        end
    end
    
    y = -1.*(-0.5*log(det(C)) - 0.5*Y.'*(C\Y)-(N/2)*log(2*pi));
end

