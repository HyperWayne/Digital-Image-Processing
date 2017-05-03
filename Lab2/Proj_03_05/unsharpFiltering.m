function [ output, scaledUnsharp, blurredInput ] = unsharpFiltering( input, boxMask, scale )

    spaFilter = spatialFiltering(input, boxMask);
    
    blurredInput = uint8(spaFilter);
    
    gmask = uint8(single(input)-single(spaFilter));

    scaledUnsharp = uint8(gmask*scale);
   
    output = uint8(input+gmask*scale);
  

end

