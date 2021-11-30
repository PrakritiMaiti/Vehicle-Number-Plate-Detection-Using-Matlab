%CREATE TEMPLATES 
%Alphabets
A=imread('Alpha/A.bmp');B=imread('Alpha/B.bmp');C=imread('Alpha/C.bmp');
D=imread('Alpha/D.bmp');E=imread('Alpha/E.bmp');F=imread('Alpha/F.bmp');
G=imread('Alpha/G.bmp');H=imread('Alpha/H.bmp');I=imread('Alpha/I.bmp');
J=imread('Alpha/J.bmp');K=imread('Alpha/K.bmp');L=imread('Alpha/L.bmp');
M=imread('Alpha/M.bmp');N=imread('Alpha/N.bmp');O=imread('Alpha/O.bmp');
P=imread('Alpha/P.bmp');Q=imread('Alpha/Q.bmp');R=imread('Alpha/R.bmp');
S=imread('Alpha/S.bmp');T=imread('Alpha/T.bmp');U=imread('Alpha/U.bmp');
V=imread('Alpha/V.bmp');W=imread('Alpha/W.bmp');X=imread('Alpha/X.bmp');
Y=imread('Alpha/Y.bmp');Z=imread('Alpha/Z.bmp');

%Natural Numbers
one=imread('Alpha/1.bmp');two=imread('Alpha/2.bmp');
three=imread('Alpha/3.bmp');four=imread('Alpha/4.bmp');
five=imread('Alpha/5.bmp'); six=imread('Alpha/6.bmp');
seven=imread('Alpha/7.bmp');eight=imread('Alpha/8.bmp');
nine=imread('Alpha/9.bmp'); zero=imread('Alpha/0.bmp');

%Creating Array for Alphabets
letter=[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z];
%Creating Array for Numbers
number=[one two three four five six seven eight nine zero];

NewTemplates=[letter number];
save ('NewTemplates','NewTemplates')
