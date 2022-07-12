string = 'C:\Users\Rohit\Desktop\Prof Prakash RAship\Full Dataset\Intact\img_intact_';
p = 2245;

for i = 1:2244
        I = imread(strcat(string,int2str(i),'.png'));
        J = imnoise(I,'speckle');
        imwrite(J,strcat(string,int2str(p),'.png')) ;
        p = p+1;
end

for i = 1:2244
        I = imread(strcat(string,int2str(i),'.png'));
        J = imnoise(I,'gaussian',0.004);
        imwrite(J,strcat(string,int2str(p),'.png')) ;
        p=p+1;
end
