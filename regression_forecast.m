%Read data and construct Linear Model
y=[1709 1621 1973 1812 1975 1862 1940 2013 1596 1725 1676 1814 1615 1557 1891 1956 1885 1623 1903 1997 1704 1810 1862 1875 1705 1619 1837 1957 1917 1882 1933 1996 1673 1753 1720 1734 1563 1574 1903 1834 1831 1776 1868 1907 1686 1779 1776 1783]';
A=[ones(48,1) linspace(1,48,48)'];
a=A\y

% Non Linear Model
t=linspace(1,48,48)';
B=[ones(48,1) t  sin(2*pi*t/12) cos(2*pi*t/12)];
b=B\y

% Forecast Linear Model
actual=[1548 1497 1798 1733 1772 1761]'
t=[linspace(49,54,6)]';
format bank
A= [1812.3-0.5*t]
Pct_Diff=((A-actual)/actual)*100
RMSA = sqrt(mean((A-actual).^2))


% Forecast Non Linear Model
actual=[1548 1497 1798 1733 1772 1761]'
t=[linspace(49,54,6)]';
format bank
B= [1808.4-0.3*t-9.7*sin(2*pi*t/12)-98.1*cos(2*pi*t/12)]
Pct_Diff=((B-actual)/actual)*100
RMSB = sqrt(mean((B-actual).^2))

plot(t,actual,'LineWidth',2)
hold on 
plot(t,A,'LineWidth',2)
hold on 
plot(t,B,'LineWidth',2)
legend('Actual','Fcst:Linear','Fcst:Non Linear')
title('Amtrack Monthly Ridership: Actual vs Forecast')
xticks([49 50 51 52 53 54])
xlabel('Data Month') 
ylabel('Amtrack Monthly Ridership') 
ylim([1000 2500])
    