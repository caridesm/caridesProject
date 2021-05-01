function [data] = getData(mode)
    %data file upload    
    if(mode == "1")
        fileNamePrompt = "enter the filename, press q to quit";
        fileName = input(fileNamePrompt, 's');
        
        delimiter = ',';
        headerlinesIn = 1;
        data = importdata(fileName, delimiter,headerlinesIn);
        data = split(data, delimiter);
        
    %manual data entry
    else
        delimiter = ',';
        dataPrompt = "enter the data (comma delimitter)";
        data = input(dataPrompt, 's');
        data = split(data, delimiter);
        
    end
end

