clear all;
clc;
int_img = imread('C:\Users\Rohit\Desktop\Prof Prakash RAship\Intact Images\img_intact_1.png');
dam_img = imread('C:\Users\Rohit\Desktop\Prof Prakash RAship\Damaged Image\img_damage_1.png');

%mirroring
int_img_fliplr = int_img(:,end:-1:1,:);           %# horizontal flip
int_img_flipud = int_img(end:-1:1,:,:);           %# vertical flip
int_img_fliplrud = int_img(end:-1:1,end:-1:1,:);  %# 

% dam_img_fliplr = fliplr(dam_img);
% dam_img_flipud = flipud(dam_img);
% dam_img_fliplrud = flipud(dam_img_fliplr);

imwrite(int_img_fliplr,'C:\Users\Rohit\Desktop\Prof Prakash RAship\Intact Images\img_intact_2.png');
imwrite(int_img_flipud,'C:\Users\Rohit\Desktop\Prof Prakash RAship\Intact Images\img_intact_3.png');
imwrite(int_img_fliplrud,'C:\Users\Rohit\Desktop\Prof Prakash RAship\Intact Images\img_intact_4.png');

p=5;
%int_img_rotations
for i = 1:360
        A = int_img;
        J = imrotate(A,i,'bilinear','crop');
        string = 'C:\Users\Rohit\Desktop\Prof Prakash RAship\Intact Images\img_intact_';
        zeropixels = J == 0;
        J(zeropixels) = A(zeropixels);
        imwrite(J,strcat(string,int2str(p),'.png')) ;
        p = p+1;
end

%int_img_fliplr rotations
for i = 1:360
        A = int_img_fliplr;
        J = imrotate(A,i,'bilinear','crop');
        string = 'C:\Users\Rohit\Desktop\Prof Prakash RAship\Intact Images\img_intact_';
        zeropixels = J == 0;
        J(zeropixels) = A(zeropixels);
        imwrite(J,strcat(string,int2str(p),'.png')) ;
        p = p+1;
end

%int_img_flipud rotations
for i = 1:360
        A = int_img_flipud;
        J = imrotate(A,i,'bilinear','crop');
        string = 'C:\Users\Rohit\Desktop\Prof Prakash RAship\Intact Images\img_intact_';
        zeropixels = J == 0;
        J(zeropixels) = A(zeropixels);
        imwrite(J,strcat(string,int2str(p),'.png')) ;
        p = p+1;
end

%int_img_fliplrud rotations
for i = 1:360
        A = int_img_fliplrud;
        J = imrotate(A,i,'bilinear','crop');
        string = 'C:\Users\Rohit\Desktop\Prof Prakash RAship\Intact Images\img_intact_';
        zeropixels = J == 0;
        J(zeropixels) = A(zeropixels);
        imwrite(J,strcat(string,int2str(p),'.png')) ;
        p = p+1;
end

%Affine Transforms
        
%A=int_img;
%tform=affine2d([1 0 0 ; 2 1 0 ; 0 0 1]);
%J=imwarp(A, tform, 'OutputView',imref2d(size(A)));
%subplot(1,3,1)
%imshow(A),title('Original Image');
%subplot(1,3,2)
%imshow(J),title('Rotated Image');
%zeropixels = J == 0;
%J(zeropixels) = A(zeropixels);
%subplot(1,3,3)
%imshow(J),title('Correct Image');   
%image_arr_int = [int_img,int_img_fliplr,int_img_flipud,int_img_fliplrud];
%p = 5;
%for k = 1 : size(im, 3)
 %   for i = 1:360
  %      J = imrotate(k,i,'bilinear','crop');
   %     string = 'C:\Users\Rohit\Desktop\Prof Prakash RAship\Intact Images Resized\';
    %    zeropixels = J == 0;
     %   J(zeropixels) = k(zeropixels);
      %  imwrite(J,strcat(string,int2str(p),'.png')) ;
       % p = p+1;
    %end
%end
        
        