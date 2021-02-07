# Meteor-Detection-using-MATLAB
Meteor Detection via MATLAB using Image Processing Toolbox and Hough Transformation
## Aim of the Project - 
In this project I've tried to detect meteors using various night sky images depicting a possible meteor by applying the principles of Hough Transform and other available system functions.
The Image Processing Toolbox supports functions that enable you to use the Hough transform to detect lines in an image.

The Hough Function available in MATLAB i.e. (hough) implements the Standard Hough Transform (SHT). The Hough transform is designed to detect lines, using the parametric representation of a line:
rho = x*cos(theta) + y*sin(theta)

## Steps Involved - 
1) Converting the RGB Image into it's Grayscale Equivalent.
2) Followed by converting the Grayscale image into a Binary Image where 1 represents all the white values and 0 represents all the black values. 
3) The image is then processed further by removing acailable smoothening techniques and filtering it to remove noises.
