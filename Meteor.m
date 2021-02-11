clc 
clear all
RGB = imread('Meteor.jpg');
gray_image = rgb2gray(RGB)
binary_image = im2bw(gray_image)

figure(1)
subplot(3,2,1); imshow(RGB); title('RGB Image');
subplot(3,2,2); imshow(gray_image); title('Grayscale Image');
subplot(3,2,3); imshow(binary_image); title('Binary Image');

rotI = imrotate(binary_image,10,'crop')
subplot(3,2,4); imshow(rotI); title('Rotated by 2 degrees')

image_smoothing = medfilt2(binary_image)
subplot(3,2,5); imshow(image_smoothing); title('Smoothened Image')

BW =edge(rotI)
subplot(3,2,6); imshow(BW); title('Edge detected')

[H,theta,rho] = hough(BW)
P = houghpeaks(H,5,'threshold',ceil(0.3*max(H(:))))
lines = houghlines(BW,theta,rho,P,'FillGap',5,'MinLength',7)

figure, imshow(rotI), hold on
max_len = 0;
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

   % Plot beginnings and ends of lines
   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

   % Determine the endpoints of the longest line segment
   len = norm(lines(k).point1 - lines(k).point2);
   if ( len > max_len)
      max_len = len;
      xy_long = xy;
   end
end
% highlight the longest line segment
plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','red');
