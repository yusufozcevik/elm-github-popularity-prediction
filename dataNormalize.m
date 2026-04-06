function [X_train,Y_train,X_test,Y_test] = dataNormalize(X_train,Y_train,X_test,Y_test,k)

if k==0
    
end
if k==1
    % Scale data zscore a göre 
    mean_x = mean(X_train);
    std_x = std(X_train);

    mean_y = mean(Y_train);
    std_y = std(Y_train);

    X_train = (X_train - mean_x) ./ std_x;
    X_test = (X_test - mean_x) ./ std_x;

    Y_train = (Y_train - mean_y) ./ std_y;
    Y_test = (Y_test - mean_y) ./ std_y;    
end

if k==2
%     features used demiş ama bakmalı
    std_x = std(X_train);

    std_y = std(Y_train);

    X_train = X_train./ std_x;
    X_test = X_test./ std_x;

    Y_train = Y_train./ std_y;
    Y_test = Y_test./ std_y;
end

if k==3
%     min max
    minX = min(X_train);
    maxX = max(X_train);

    minY = min(Y_train);
    maxY = max(Y_train);

    X_train = (X_train - minX) ./ (maxX-minX);
    X_test = (X_test - minX) ./ (maxX-minX);

    Y_train = (Y_train - minY) ./ (maxY-minY);
    Y_test = (Y_test - minY) ./ (maxY-minY); 
end


end

