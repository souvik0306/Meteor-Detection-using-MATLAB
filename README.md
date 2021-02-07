# Meteor-Detection-using-MATLAB
Meteor Detection via MATLAB using Image Processing Toolbox and Hough Transformation
## Aim of the Project - 
In this project I've tried to detect meteors using various night sky images depicting a possible meteor by applying the principles of Hough Transform and other available system functions.

## Steps Involved - 
1) Converting the RGB Image into it's Grayscale Equivalent.
2) Followed by converting the Grayscale Image into a Binary Image where 1 represents all the white values and 0 represents all the black values. 
3) The image is then processed further by available smoothening techniques and filtering it to remove noises.
4) Using the Hough Function available in MATLAB i.e. (hough) implements the Standard Hough Transform (SHT). The Hough transform is designed to detect lines, using the parametric representation of a line:

                                         rho = x*cos(theta) + y*sin(theta),

  where the variable rho is the distance from the origin to the line along a vector perpendicular to the line. theta is the angle between the x-axis and this vector. The hough       function generates a parameter space matrix whose rows and columns correspond to these rho and theta values, respectively.

 By applying Hough Transformation in the processed image a raw image is produced with detected lines.
