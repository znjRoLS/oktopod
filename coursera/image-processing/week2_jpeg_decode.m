function out = week2_jpeg_decode(original)
   
   out = uint8(original);
   
  for i = 1:3
    img = original(:,:,i);
    inv_dcted_image = uint8(blockproc(double(img), [8,8], @idct2));
    
    out(:,:,i) = inv_dcted_image;
  endfor
  endfunction