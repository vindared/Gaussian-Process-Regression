%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vorlesung: Maschinelles Lernen in der Regelungstechnik    %
% Lehrstuhl für Regelungstechnik                            %
% Tutor: Hartwig Huber, hartwig.huber@fau.de                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
close all

%%%%%%%
%%% MLRT-Matlab Template Uebung 3 (Gaussprozesse)
%%%%%%%

%% Grundsätzliche Deklarationen
t(:,1) = -10.0:0.01:10.0;       % Diskretisierung an der das Modell ausgewertet wird:
thetaPrior = [0.01,1];          % A-Priori Hyperparameter, [sigma_E  lambda]
Yreal(:,1) = sin(t)./t;         % Urspruengliche Funktion

%% Aufgabe a)
% Prozesse Zeichnen
figure;
% Hier ergaenzen
title('Zufallsprozesse')
grid on



%% Aufgabe b)

% Original Daten
% Load data
tmp = load('Xoriginal.mat');
Xoriginal = tmp.Xoriginal;
tmp = load('Yoriginal.mat');
Yoriginal = tmp.Yoriginal;
No = length(Xoriginal);

% Hier ergaenzen


% Corrupt Daten
% Load Data
tmp = load('Xcorrupt.mat');
Xcorrupt = tmp.Xcorrupt;
tmp = load('Ycorrupt.mat');
Ycorrupt = tmp.Ycorrupt;
Nc = length(Xcorrupt);

% Hier ergaenzen

%% Aufgabe c)
% optimierung max Likelihood

% Hier ergaenzen










