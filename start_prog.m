%% load image and run program
% biomath bootcamp project
% 
%
% code adapted from SynD
%
% Johannes Hjorth
% johannes.hjorth@cncr.vu.nl
% hjorth@kth.se
%
% Sabine Schmitz
% sabine.schmitz@cncr.vu.nl
%
% The latest version of the code is available from:
% http://www.johanneshjorth.se/SynD
% 
% You can also find the code at:
%
% http://software.incf.org/software/synd
% http://www.cncr.nl/resources
%
% Schmitz SK, Hjorth JJJ, Joemai RMS, Wijntjes R, Eijgenraam S,  
% de Bruijn P, Georgiou C, de Jong APH, van Ooyen A, Verhage M, 
% Cornelisse LN, Toonen RF, Veldkamp W 
% Automated Analysis of Neuronal Morphology, Synapse Number and 
% Synaptic Recruitment, Journal of Neuroscience Methods 195 (2011) 185–193
% DOI: 10.1016/j.jneumeth.2010.12.011
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% read the sample image
% using original 1024 x 1024 px image WILL cause system to CRASH
I = imread('images/practice_neuron.jpg');
save I
load I
%imshow(I)

% convert to binary, with threshold
threshold = 0.1;
BW = im2bw(I, threshold);
% show figres
imshow(I), figure, imshow(BW)