function  [ output ] =  spatialFiltering( input, mask )

[a,b] = size(mask);
[m,n] = size(input);

processed = single(zeros(m,n));

% Rotate the correlation kernel 180 degrees about its center element to create a convolution kernel.
kernel = rot90(mask,2);

weight = sum(kernel);
weight = sum(weight,2);

edge = uint8(a/2);
input = cast(input,'single');
edge  = cast(edge,'single');

for i = 1:m
    for j = 1:n
        if( (i-edge)<0 || (j-edge)<0 || (i+edge)>m || (j+edge)>n )
            processed(i,j) = 0;
        else
            for s = (edge-1):-1:-(edge-1)
                 for t = (edge-1):-1:-(edge-1)
                        processed(i,j) = processed(i,j) + kernel(-s+edge,-t+edge) * input(i-s,j-t);
                end
            end
            if(weight~=0) processed(i,j) = processed(i,j)/weight; end
        end
    end
end

processed = cast(processed,'uint8');
output = processed;
end

