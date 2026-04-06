

veriseti=xlsread('learningbased.xlsx','Sayfa1');

[satir sutun]=size(veriseti);

veriseti = veriseti(randperm(size(veriseti, 1)), :);

percentage =20;
index=floor((satir*percentage)/100);
index=satir-index;

VerilerRTrain=veriseti (1:index,:);
VerilerRTest=veriseti (index+1:satir,:);

X_train= VerilerRTrain(:,2:sutun);
Y_train=VerilerRTrain(:,1);
X_test=VerilerRTest(:,2:sutun);
Y_test=VerilerRTest(:,1);
HEDEF2=Y_test;
Target=Y_train;

k=3;
[X_train,Y_train,X_test,Y_test] = dataNormalize(X_train,Y_train,X_test,Y_test,k);

VerilerRTrain=Y_train;
VerilerRTrain(:,2:sutun)=X_train;

VerilerRTest=Y_test;
VerilerRTest(:,2:sutun)=X_test;


    [TrainingTime, TrainingAccuracy] = elm_train(VerilerRTrain, 0, 40, 'sig');
    [TestingTime, TestingAccuracy, RMSE, MSE, R2,HESAP,HEDEF] = elm_predict(VerilerRTest);

[HESAP2] = dataReScale(Target,HESAP,k);



