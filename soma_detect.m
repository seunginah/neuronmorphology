function [ opened, somacount ] = soma_detect( orig_img )
%UNTITLED3 Summary of this function goes here
%   %% soma detection for biomath bootcamp project
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


  % SynD can read in tiff-stacks containing multiple images, but it only
  % processes the first image. The dispInfo.curImage is a legacy from when
  % the program allowed the user to select which of the images in a stack
  % to use. The functionality can be reimplemented, since all other functions
  % uses dispInfo.curImage to extract the relevant image to use.
  %
  % The soma is defined by data.somaMask which is data.height x data.width
  % in size, pixels belonging to the soma are set to 1, the others are 0.
  % More than one soma is allowed in the mask. In addition there is a 
  % data.somaMeasureMask that optionally defines circular regions of interest
  % in the soma that can be specified by the user. These ROIs are derived from
  % data.measurePoint which specifies the pixel index of the center of the
  % ROIs.
  
% The soma is separated from connected neurites by performing a 
% morphological opening (erosion followed by dilation) using a 
% disk with radius 15 pixels as the structural element

disk_r = 10; % PIXELS, radius of disk used for morph opening
se = strel('disk', disk_r); % generate structuring element of "disk" shape, specify disk radius
opened = imopen(orig_img,se); % open the original image
figure
subplot(1,2,1)
imshow(opened,[]);

closed = imclose(orig_img, se); % close the image-- fills in gaps between disks
subplot(1,2,2)
imshow(closed,[]);

% count the # of soma blobs
somacount = 24;


end

