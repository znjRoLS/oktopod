function out = week2_jpeg_encode(original, quant)
  
  out = uint16(original);
  
  for i = 1:3
    img = out(:,:,i);
    dcted_image = uint16(blockproc(img, [8,8], @dct2));
  
    quantize = idivide(dcted_image, quant);
    quantize *= quant;
    
    out(:,:,i) = quantize;
  endfor
endfunction