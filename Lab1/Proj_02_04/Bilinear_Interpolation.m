% Program for "Shrinking" and "Zooming" images by Bilinear Interpolation
clc;
clear all;

 scalingFactor = input('Type the factor that shrinks ( factor < 1 ) :');
 ResizedImage  =  resizedImage_bilinear( imread('Image\clock.tif'), scalingFactor);
 imwrite( ResizedImage , 'Image\Bilinear_Shrinked_Clock.tif');  
 
 scalingFactor  = input('2. Type the factor that scales ( factor > 1 ) :');
 ResizedImage   = resizedImage_bilinear( imread('Image\Bilinear_Shrinked_Clock.tif') , scalingFactor);
 imwrite( ResizedImage ,'Image\Bilinear_Zoomed_Clock.tif');
 
 imshow(  ResizedImage), title(size( ResizedImage ));