load('ex3data1.mat');
lambda = 0.1;

m = size(X, 1);
n = size(X, 2);

%preserved to display images
X_orig = X;

% Add ones to the X data matrix
X = [ones(m, 1) X];

theta = zeros(n + 1, 1);
%ntheta = zeros(1, n + 1);

options = optimset('GradObj', 'on', 'MaxIter', 50);

ntheta = fmincg (@(t)(cost(t, X, (y == 1), lambda)), theta, options);

for i = 1:50,
	r = ceil(rand(1,1) * m);
	displayImage(X_orig, r);
	pred = X(r, :) * ntheta;
	if pred > 0,
		disp('One, oh yeah!');
	else
		disp('Not one, sorry...');
	end;
	pause;
end;

pred = X * ntheta;
y_new = (y == 1);
fprintf("Accuracy = %f\n", mean(double(pred > 0 == y_new)) * 100 );
