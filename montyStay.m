function [stayWin] = montyStay(sims)

win = 0;
lose = 0;
total=sims;
while sims>0
    %first, set up the game by randomly placing car and goats
    numberDoors = 3;
    doors = [1 2 3];
    doorCar = randi(numberDoors); %returns door number with car, now set goat doorsdoorCar = ['door' num2str(doorCarTemp)];
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
    remainDoors = [doorCar remainGoat];%two doors remain

    %scenario to simulate is to always stay
    pick2=pick1;
    if pick2==doorCar
        %winner winner
        win = win+1;
    elseif pick2==remainGoat
        lose = lose + 1;%loser 
    end
    sims = sims-1;
end
stayWin = round((win/total)*100,2);
end