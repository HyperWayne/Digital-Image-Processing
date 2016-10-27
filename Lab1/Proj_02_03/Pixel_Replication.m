% Program for "Shrinking" and "Zooming" images by Pixel Replication (Nearest Neighbor Interpolation)
clc;
clear all;
 
 scalingFactor   = input('Type the factor that shrinks ( factor <¢°) :');
 ResizedImage = resizedImage_replication(imread('Image\clock.tif'), scalingFactor);
 imwrite(ResizedImage ,'Image\shrinking_clock.tif');
 
 scalingFactor   = input('Type the factor that zoomed (factor > 1) :');
 ResizedImage = resizedImage_replication(imread('Image\shrinking_clock.tif'), scalingFactor);
 imwrite(ResizedImage ,'Image\Zooming_clock.tif');
 
imshow(ResizedImage), title(size(ResizedImage));
 
% In shrinking , it involves the reuduction of pixels, and it may losts 
% lots of incoverable information.

% The disadvanage for this method is as the zooming factor increased , the
% image got more and more blurred.

