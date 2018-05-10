function displayImage(X, j)
	
	sz = 400;
	sqrt_sz = 20;

	%initialize the matrix A
	A = zeros(sqrt_sz, sqrt_sz);

	for i = 1:sz,
		A(floor(i / sqrt_sz) + 1, i - floor(i / sqrt_sz) * sqrt_sz + ((i - floor(i / 20) * 20) == 0)*1) = X(j, i);
	end;
	

	%display matrix A
	imagesc(A), colormap gray;

end;