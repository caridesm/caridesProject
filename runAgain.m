function [runAgain] = runAgain()
    validInput = false;
    while not(validInput)
        runAgainPrompt = "Do you wish to run again? (1/0)";
        runAgain = input(runAgainPrompt, 's');
        
        switch runAgain 
            case "1" 
                disp("Running again...")
                runAgain = true;
                validInput = true;
                break;
            case "0"
                disp("Exiting program...")
                runAgain = false;
                validInput = true;
                break;
            otherwise
                disp("Invalid input")
        end
    end

end

