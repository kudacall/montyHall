%JJN 1/3/16
function [] = readme()

str1 = 'The Monty Hall problem is a mathematical paradox, in the form of a probability puzzle.';
str2 = 'These functions, montySwitch and montyStay, are simulations to prove this paradox. Call them with a sole input which is the number of simulations. The output is the win percentage.';
str3 = 'Suppose you are on a game show and given the choice of three doors: Behind one door is a car; behind the others, goats. You pick a door, say No. 1, and the host, who knows what is behind the doors, opens another door, say No. 3, which has a goat. He then says to you, "Do you want to pick door No. 2?" Is it to your advantage to switch your choice?';
str4 = 'The problem is a paradox of the veridical type, because the correct result (you should switch doors) is so counter intuitive it can seem absurd, but is nevertheless demonstrably true. ';


disp(str1)
speech(str1)
cont = input('Hit any key to continue or press enter to skip','s');
if isempty(cont)==1
    return
end
disp(str2)
disp(str3)
disp(str4)
speech([str2 ' ' str3 ' ' str4])

end