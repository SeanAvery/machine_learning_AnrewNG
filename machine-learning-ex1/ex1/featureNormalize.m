function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma.
%
%               Note that X is a matrix where each column is a
%               feature and each row is an example. You need
%               to perform the normalization separately for
%               each feature.
%
% Hint: You might find the 'mean' and 'std' functions useful.
%


%meanSize = mean(X(: , 1));
%fprintf('mean of size is is %d \n', meanSize);
%meanRoom = mean(X(: , 2));
%fprintf('mean number of bedrooms is %d \n', meanRoom);

%mu = [meanSize; meanRoom;];

%sigSize = std(X(: , 1));
%fprintf('standard deviation of Size is %d \n', sigSize);
%sigRoom = std(X(: , 2));
%fprintf('standard deviation of Rooms is %d \n', sigRoom);

%sigma = [sigSize; sigRoom;];

%for i = 1:size(X,2)-1
%  X_norm(:,i) = (X(:,i)-mu(i))/sigma(i);
%end

%X_norm(:,1) = (X(: , 1) - meanSize)/sigSize;
%disp(col1);

%X_norm(:,2) = (X(: , 2) - meanRoom)/sigRoom;
%disp(col2);

mu = mean(X);
sigma = std(X);

for i = 1:size(X,2)
    X_norm(:,i) = (X(:,i) - mu(i)) / sigma(i);
end



% ============================================================

end
