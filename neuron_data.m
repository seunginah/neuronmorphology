function [ data_structure ] = neuron_data( neuron_ID, soma_area, centroid, neurite_count)
%this function creates a data structure which holds all the information
%needed to describe 1 neuron
%   utilizes matlab data structures to save info for each neuron

% neuron ID #
f1 = 'ID';
v1 = neuron_ID';
% size of neuron soma
f2 = 'area';
v2 = soma_area;
% centroid coordinates
f3 = 'centroid';
v3 = centroid;
% number of major & minor neurites
f4 = 'neurites';
v4 = neurite_count;

data_structure = struct(f1, v1, f2, v2, f3, v3, f4, v4);

end

