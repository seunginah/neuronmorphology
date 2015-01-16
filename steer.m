function [ J1, J2 ] = steer( img )
%steerable filter demo
%http://www.mathworks.com/matlabcentral/fileexchange/44956-steerable-filter
%   Detailed explanation goes here

theta = [0:15:360];
I = img;
tic
for i = [1:length(theta)]
   J1(:,:,i) = steerGaussFilterOrder1(I,theta(i),3,true);
end
toc

tic
for i = [1:length(theta)]
   J2(:,:,i) = steerGaussFilterOrder2(I,theta(i),3,true);
end
toc

contour3(J1)

end

