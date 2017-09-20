function [switchWin] = montySwitch(sims)

win = 0;
lose = 0;
total=sims;
while sims>0
    %first, set up the game by randomly placing car and goats
    numberDoors = 3;
    doorCar = randi(numberDoors); %returns door number with car, now set goat 
    doorGoat = [];
    for ind=1:numberDoors
        if ind~=doorCar
            doorGoat = [doorGoat ind];
        end
    end

    %now we start the game show.  first, pick a door at random
    pick1 = randi(numberDoors);
    %now remove a door that has a goat, but was not chosen in pick1
    remainGoat=[];
    for ind = 1:length(doorGoat)
        if pick1==doorGoat(ind)
            remainGoat=doorGoat(ind);
        end
    end
    remainDoors = [doorCar remainGoat];%two doors 

    %simulate always switching doors
    if pick1==doorCar
        pick2=remainGoat; %switch and lose
        lose = lose + 1;
    elseif pick1==remainGoat
        pick2=doorCar; %switch and win
        win = win + 1;
    end
    sims = sims-1; %counter
end
switchWin = round((win/total)*100,2);

end