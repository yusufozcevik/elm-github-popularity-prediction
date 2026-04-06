function [predict] = dataReScale(Y,Npredict,k)

if k==0
    predict=Npredict;
end
if k ==1
    % Rescale target zscore
    mean_y = mean(Y);
    std_y = std(Y);
   
    Y = Y * std_y + mean_y;
    predict = Npredict * std_y + mean_y;
end

if k ==2
    % Rescale target  feature
    std_y = std(Y);
    Y = Y * std_y;
    predict = Npredict * std_y;
end

if k ==3
    % Rescale target min max
    minY = min(Y);
    maxY = max(Y);
    
    
    predict = (Npredict * (maxY-minY))+minY;
end

end

