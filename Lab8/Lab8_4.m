figure;
subplot(3, 3, 1);
imshow(phantom);

for i = 1 : 8;
    subplot(3,3,i + 1);
    phantom_freq = fft2(phantom);
    imshow(fft2(phantom_freq(1:i:size(phantom, 1), :)));
end