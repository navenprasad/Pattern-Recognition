function [] = preprocess()
    files = dir('raw/*.jpg');
    for file = files'
        direc = strcat('raw/',file.name);
        I = imread(direc);
        [m, n] = size(I)
        I = rgb2gray(I);
        I = imresize(I, 2.0);
        imwrite(I, file.name, 'png');
    end
end

        