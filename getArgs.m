function [mode] = getArgs
    validInput = false;    
    while not(validInput)
        modePrompt = "Do you wish to upload a file or enter manually? (1/0) press q to quit";
        mode = input(modePrompt, 's');
    
        switch mode
            case "1"
                disp("file upload selected...")
                validInput = true;
                break;
            case "0"
                disp("manual entry selected...")
                validInput = true;
                break;
            case "q"
                disp("Exiting program...")
                exit();
            otherwise
                disp("invalid response press q to quit...")
        end
    end
end

