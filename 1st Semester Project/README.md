# Computational Engineering Mechanics 1 EndSemester Project

## Course Project Topics: Resultant Force and Moment, Centroid, MOI (Area) and Kinematics of Particle

The course project has one figure for all the problems below. 
1. Consider the last two digits of the registration numbers of the team members. Sort them in descending order (highest to 
lowest). 
2. Assign a = highest registration number in the team, b = second highest and c = lowest. If any team has only two members, 
take an extra value of 40 (as extra member) and use in the sorting of a, b, and c.
3. r = (TeamNumber%3) + 1. So that each team would have r = 1, 2 or 3. Rotate the figure below by (90)*(r) in Counterclockwise direction.
4. The white circle corresponds to the removed region (cut-out or circular hole). If any team has a figure where circular hole 
cuts the boundary of the bigger square, use the diameter of the circular hole as 0.5*a.
5. Assume any missing values suitably. A is a square, B is a quarter-circle, C is a semi-circle and D is an equilateral triangle.
6. Points A, B, C and D correspond to the Centroid of the individual areas A, B, C and D, respectively, marked in the figure.
7. Point G corresponds to the Centroid of the composite area (complete blue region).
8. Refer to the Power Point file (provided along with this file) for the content of the presentation and demonstration.
9. All four questions carry equal weightage.

<p align="center"> <img src="https://user-images.githubusercontent.com/73754194/153809368-370f4e11-73b2-4985-88cb-0708e7f1d348.png"> </p>

# A: Centroid
Determine the Centroid of the composite area (blue region) as Point G. Consider any reference frame based on your convenience. 

# B: Moment of Inertia
Determine the Moment of Inertia (Area) of the composite area about axes passing through the centroid of the composite area and 
parallel to the chosen reference frame.

# C: Resultant Force and Moment
Consider Vector 𝐹(𝐴𝐵) = Force acting in the direction of A to B, whose magnitude is the distance between A and B. Similarly Vector F(BC), Vector F(CD) and Vector F(DA).

   a) Determine the resultant force acting on the composite area (rigid body).
 
   b) Determine the resultant moment acting on the composite area (rigid body) about the centroid of the composite area (G).

# D: Kinematics of Particle

Propose path for a mobile robot (considered as a particle) to move from points A to C, C to B, B to D and then D to A. 
  
   a) Extra points (via points) can be included in between the start and end of individual motions.
   
   b) Only straight line and circular motion are allowed.
   
   c) The robot should not pass through the circular hole. It can go along the border of the circular hole.
   
   d) Try to minimize the total distance traversed by the robot. Use your intuition or any mathematical formulation.

   e) Determine the total distance traversed by the robot for the complete motion.
