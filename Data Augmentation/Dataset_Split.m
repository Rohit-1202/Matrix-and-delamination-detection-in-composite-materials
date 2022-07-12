
string = 'C:\Users\Rohit\Desktop\Prof Prakash RAship\Full Dataset\Damaged\img_damage_';
rng('default');
r = randperm(6732,1010);
Dest = 'C:\Users\Rohit\Desktop\Prof Prakash RAship\Training Data Set\Damaged\img_damage_';
for i = 1:length(r)
     I = imread(strcat(string,int2str(r(i)),'.png'));
     imwrite(I,strcat(Dest,int2str(r(i)),'.png'));
     delete(strcat(string,int2str(r(i)),'.png'));
end
