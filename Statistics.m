data = randi([0,100],10,2)   % Generate random integers in the range of [0,100] as a 10x2 matrix

% Write data to XLSX file
%xlswrite('Data.xlsx',data,1,'A1');

% Write data to CSV file
csvwrite('Data.csv',data,0,0);

% Read data from XLSX file
%x = xlsread('Data.xlsx','A:A');
%y = xlsread('Data.xlsx','B:B');

% Read data from CSV file
x = csvread('Data.csv',0,0,[0,0,9,0])
y = csvread('Data.csv',0,1,[0,1,9,1])

% MEASURES OF CENTRAL TENDENCY
MEAN_X = mean(x)
MEDIAN_X = median(x)
MODE_X = mode(x)
GEOMETRIC_MEAN_X = geomean(x)
HARMONIC_MEAN_X = harmmean(x)
TRIMMED_MEAN_X = trimmean(x,10)

MEAN_Y = mean(y)
MEDIAN_Y = median(y)
MODE_Y = mode(y)
GEOMETRIC_MEAN_Y = geomean(y)
HARMONIC_MEAN_Y = harmmean(y)
TRIMMED_MEAN_Y = trimmean(y,10)

% MEASURES OF DISPERSION
RANGE_X = range(x)
PERCENTILE_X = prctile(x,50)
INTERQUARTILE_RANGE_X = iqr(x)
MEAN_ABSOLUTE_DEVIATION_X = mad(x)
STANDARD_DEVIATION_X = std(x)
VARIANCE_X = var(x)

RANGE_Y = range(y)
PERCENTILE_Y = prctile(y,50)
INTERQUARTILE_RANGE_Y = iqr(y)
MEAN_ABSOLUTE_DEVIATION_Y = mad(y)
STANDARD_DEVIATION_Y = std(y)
VARIANCE_Y = var(y)

% PLOT
figure('Name','Plot','NumberTitle','off');
plot(x,y,'o --');
title('Plot of Sample Data');
xlabel('DATA_X');
ylabel('DATA_Y');
