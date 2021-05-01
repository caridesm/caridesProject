endProgram = false;

while not(endProgram)
    %1 for file 0 for manual
    mode = getArgs();
    
    %get the data from either the file or the CLI
    data = getData(mode);
    
    %preform computation on data
    compute(data);
    
    if(not(runAgain()))
        endProgram = true;
    end
    
end