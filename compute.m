function [] = compute(data)
    %sanity check
    numericData = 1:length(data);
    sum = 0;
    calcAvg = @(total, n) total/n;
    
    for i = 1:length(data)
        numericData(i) = str2num(data{i});
        sum = sum + str2num(data{i});
    end
    
    avg = calcAvg(sum, length(data));
    
    bar(numericData);
    title("Value of Clients' Portfolio");
    xlabel("Client ID");
    ylabel("Portfolio Value");
    
    fprintf('Average protfolio value from %d clients is %f\n', length(data), avg);
end