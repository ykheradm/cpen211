%lab5


%Q1
n= [5:13]';
%Q2
yas=factorial(n);
%Q3
yasi=log10(yas);
%Q4
new_table=table(n,yas,yasi);
%Q5
new_table.Properties.VariableNames={'n','n!','log10(n!)'};
%Q6
new_table;
%Q7
figure
tiledlayout('flow')
%Q7.a
nexttile
plot(n, yas, '-o', 'Marker','d')
xlabel('n')
ylabel('n!')
title('Factorial of n')
grid on
%Q7.b
nexttile
plot(n,yasi,'-s','Color', 'r' ,'Marker','s')
xlabel('n')
ylabel('log10(n!)')
title('Logarithm (base 10) of Factorial of n')
grid on