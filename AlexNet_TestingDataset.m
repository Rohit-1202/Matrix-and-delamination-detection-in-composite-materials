load AlexnetTransfersgdm;
Dataset = 'C:\Users\Rohit\Desktop\Prof Prakash RAship\Training Data Set' ;
imdsTest = imageDatastore(Dataset,"IncludeSubfolders",true,"LabelSource","foldernames");
augimdsTest = augmentedImageDatastore([227 227 3],imdsTest);
[YPred,scores] = classify(AlexnetTransfersgdm ,augimdsTest);
YTest = imdsTest.Labels;
accuracy = mean(YPred == YTest) ;