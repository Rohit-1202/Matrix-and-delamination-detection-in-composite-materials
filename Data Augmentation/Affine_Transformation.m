clear all;
clc;
int_img = imread('C:\Users\Rohit\Desktop\Prof Prakash RAship\Intact Images\img_intact_1.png');
int_img_fliplr = imread('C:\Users\Rohit\Desktop\Prof Prakash RAship\Intact Images\img_intact_2.png');
int_img_flipud = imread('C:\Users\Rohit\Desktop\Prof Prakash RAship\Intact Images\img_intact_3.png');
int_img_fliplrud = imread('C:\Users\Rohit\Desktop\Prof Prakash RAship\Intact Images\img_intact_4.png');
 
p = 1445;
%int img
for i = 0.02:0.02:4
        A = int_img;
        tform=affine2d([1 0 0 ; i 1 0 ; 0 0 1]);
        J=imwarp(A, tform, 'OutputView',imref2d(size(A)));
        zeropixels = J == 0;
        J(zeropixels) = A(zeropixels);
        string = 'C:\Users\Rohit\Desktop\Prof Prakash RAship\Intact Images\img_intact_';
        imwrite(J,strcat(string,int2str(p),'.png')) ;
        p = p+1;
end
%int_img_fliplr
for i = 0.02:0.02:4
        A = int_img_fliplr;
        tform=affine2d([1 0 0 ; i 1 0 ; 0 0 1]);
        J=imwarp(A, tform, 'OutputView',imref2d(size(A)));
        zeropixels = J == 0;
        J(zeropixels) = A(zeropixels);
        string = 'C:\Users\Rohit\Desktop\Prof Prakash RAship\Intact Images\img_intact_';
        imwrite(J,strcat(string,int2str(p),'.png')) ;
        p = p+1;
end
%int_img_flipud
for i = 0.02:0.02:4
        A = int_img_flipud;
        tform=affine2d([1 0 0 ; i 1 0 ; 0 0 1]);
        J=imwarp(A, tform, 'OutputView',imref2d(size(A)));
        zeropixels = J == 0;
        J(zeropixels) = A(zeropixels);
        string = 'C:\Users\Rohit\Desktop\Prof Prakash RAship\Intact Images\img_intact_';
        imwrite(J,strcat(string,int2str(p),'.png')) ;
        p = p+1;
end
%int_img_fliplrud
for i = 0.02:0.02:4
        A = int_img_fliplrud;
        tform=affine2d([1 0 0 ; i 1 0 ; 0 0 1]);
        J=imwarp(A, tform, 'OutputView',imref2d(size(A)));
        zeropixels = J == 0;
        J(zeropixels) = A(zeropixels);
        string = 'C:\Users\Rohit\Desktop\Prof Prakash RAship\Intact Images\img_intact_';
        imwrite(J,strcat(string,int2str(p),'.png')) ;
        p = p+1;
end
% dam_img_test = imread('C:\Users\Rohit\Desktop\Prof Prakash RAship\Damaged Image\img_damage_1004.png')