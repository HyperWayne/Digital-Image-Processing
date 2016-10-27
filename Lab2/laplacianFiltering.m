function [ output, scaledLaplacian ] = laplacianFiltering( input, laplacianMask, scale )

    spaFilter = spatialFiltering(input, laplacianMask);
    scale = single(scale);
    input = single(input);
    spaFilter = single(spaFilter);
    
    scaledLaplacian = uint8(spaFilter*scale);
    output = uint8(input + spaFilter*scale); 

end

