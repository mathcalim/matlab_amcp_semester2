function y = two_rows(A)
    if ndims(A) == 2 & height(A) == 2
        disp('Input was a two-dimensional array')
        y = A
    else
        disp('Input array was not two-dimensional')
        y = A*0
    end
end
