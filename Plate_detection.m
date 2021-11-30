clc;
clear;
[file,path]=uigetfile({'*.jfif;*.jpeg;*.jpg;*.png'},'Choose an image');
s=[path,file];
im1 = imread(s);
imgray = rgb2gray(im1);
figure , imshow(imgray);
imbin = imbinarize(imgray); 
figure , imshow(imbin);
im = edge(imgray, 'prewitt');
figure , imshow(im);

%Below steps are to find location of number plate
Iprops1=regionprops(im,'BoundingBox','Area', 'Image');
area1 = Iprops1.Area;
count1 = numel(Iprops1);
maxa= area1;
boundingBox1 = Iprops1.BoundingBox;
for i=1:count1
   if maxa<Iprops1(i).Area
       maxa=Iprops1(i).Area;
       boundingBox1=Iprops1(i).BoundingBox;
   end
end    

im = imcrop(imbin, boundingBox1);%crop the number plate area
figure , imshow(im);
im = bwareaopen(~im, 500); %remove some object if it width is too long or too small than 500

 [h, w] = size(im);%get width

figure , imshow(im);

Iprops=regionprops(im,'BoundingBox','Area', 'Image'); %read letter
count = numel(Iprops);
noPlate=[]; % Initializing the variable of number plate string.

for i=1:count
   ow = length(Iprops(i).Image(1,:));
   oh = length(Iprops(i).Image(:,1));
   if ow<(h/2) && oh>(h/3)
       letter=Letter_detection(Iprops(i).Image); % Reading the letter corresponding the binary image 'N'.
       noPlate=[noPlate letter]; % Appending every subsequent character in noPlate variable.
   end
end
%output
disp(noPlate)
file=fopen('number_plate.txt','wt');
fprintf(file,'%s\n',noPlate);
fclose(file);
winopen('number_plate.txt')
