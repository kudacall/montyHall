function [prob mostCommonLetter] = initialsprob(initials)
init = double(upper(initials));

%this function accepts an input, initials, as a string and returns the
%probability of someone else having the same initials, based on the sample
% in the probability initials xlsx

[num txt raw] = xlsread('Probability_Initials.xlsx');
%parse out samples in xlsx  
sampleCount = length(txt);

letterCount = [];
for i = 1:sampleCount
    lengthInitials = length(txt{i});
    initialsV = double(txt{i}); %this is a vector of initials tranformed to a double
    letterCount = [letterCount initialsV];
end

%probability of first initial
count1 = 0;
for i = 1:length(letterCount)
    if init(1)==letterCount(i)
        count1 = count1 + 1;
    end    
end

%probability of last initial
count2 = 0;
for i = 1:length(letterCount)
    if init(2)==letterCount(i)
        count2 = count2+1;
    end    
end

mostCommonLetter = char(mode(letterCount)); %returns most common initials

%total probability is probability of first AND last initials
prob = count1/length(letterCount) * count2/length(letterCount);
end