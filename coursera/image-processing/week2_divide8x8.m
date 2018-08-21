function out = week2_divide8x8(original)
  pkg load image;
  
  divide_size = 8;
  
  original = original.';
  
  origsize = size(original);
  newsize = origsize;
  newsize -= 1;
  newsize = idivide(newsize, divide_size);
  newsize += 1;
  newsize *= divide_size ;
  diffsize = newsize - origsize;
  padded_original = padarray(original, diffsize, 'post');
  
  sliced_by_columns = reshape(padded_original, size(padded_original,1), divide_size, []);
 
  permuted = permute(sliced_by_columns, [2 1 3]);
 
  sliced_completely = reshape(permuted, divide_size, divide_size, []) ;
  
  out = sliced_completely;
  
  endfunction