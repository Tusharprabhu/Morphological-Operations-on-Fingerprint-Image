
image_dir = 'C:\Users\tusha\OneDrive\Desktop\im3.jpg';
A = imread(image_dir);

se = strel("square", 4);

figure('Position', [100 100 1000 500]);

subplot(2, 3, 1);
imshow(A);
title('Original Fingerprint Image');

dilated_img = imdilate(A, se);
subplot(2, 3, 2);
imshow(dilated_img);
title('Dilated Fingerprint Image');
imwrite(dilated_img, 'dilated_fingerprint.png');

eroded_img = imerode(A, se);
subplot(2, 3, 3);
imshow(eroded_img);
title('Eroded Fingerprint Image');
imwrite(eroded_img, 'eroded_fingerprint.png');

opened_img = imopen(A, se);
subplot(2, 3, 4);
imshow(opened_img);
title('Opened Fingerprint Image');
imwrite(opened_img, 'opened_fingerprint.png');

closing_img = imclose(A, se);
subplot(2, 3, 5);
imshow(closing_img);
title('Closed Fingerprint Image');
imwrite(closing_img, 'closed_fingerprint.png');

boundary_img = imdilate(A, se) - imerode(A, se);
subplot(2, 3, 6);
imshow(boundary_img);
title('Boundary of Fingerprint Image');
imwrite(boundary_img, 'boundary_fingerprint.png');
