function [ F ] = rmanova( x )
%RMANOVA Summary of this function goes here
%   x = signal enter


xlswrite('teste.xlsx',x);

[s, a] = size(x);
T= sum(sum(x));
N = s*a;


%% ANOVA REPETEAD MEASURE

% disp('ANOVA REPETEAD MEASURE')
% disp(' ')

T=sum(sum(x));
T = T/N;
x_u = sum(x)/s;
x_s = sum(x')/a;

df_u = a-1;                                    %disp(['df_u_entre: ' num2str(df_u)])
df_sujeito = s-1;                              %disp(['df_sujeito: ' num2str(df_sujeito)])
df_total = N-1;                                %disp(['df_total: ' num2str(df_total)])
df_erro = df_total - (df_sujeito+df_u);        %disp(['df_erro: ' num2str(df_erro)])

% disp(' ')

SS_total = sum(sum((x-T).^2));            %disp(['SS_total: ' num2str(SS_total)])
SS_u = sum(s*((x_u-T).^2));               %disp(['SS_u_entre: ' num2str(SS_u)])
SS_sujeito = sum(a*((x_s-T).^2));         %disp(['SS_sujeito: ' num2str(SS_sujeito)])
SS_erro= SS_total - (SS_sujeito+SS_u);    %disp(['SS_erro: ' num2str(SS_erro)])

% disp(' ')

MQ_T = SS_total/df_total;               %disp(['MQ_total: ' num2str(MQ_T)])
MQ_u = SS_u/df_u;                       %disp(['MQ_u_entre: ' num2str(MQ_u)])
MQ_sujeito = SS_sujeito/df_sujeito;     %disp(['MQ_sujeito: ' num2str(MQ_sujeito)])
MQ_erro = SS_erro/df_erro;              %disp(['MQ_error: ' num2str(MQ_erro)])

% disp(' ')

F = MQ_u/MQ_erro;                %disp(['F: ' num2str(F)])


end

