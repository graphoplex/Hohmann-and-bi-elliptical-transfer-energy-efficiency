# Hohmann and bi-elliptical transfer energy efficiency

This repository was created for the mid-term assignment A1 of Professor Genya Ishigami's Space Exploration Engineering course of Fall 2017, at Keio University. However, you can use it as freely as the attached license allows.

## How to use the programs

The c++ source file calculates the normalized speed difference of two classic orbit transfer methods: the Hohmann transfer and the bi-elliptic transfer. To that effect, the user can choose the values of the following parameters:

- **min_r21**, i.e. the minimum ratio between the radii of the final and initial orbit (unit: none, type: double);
- **max_r21**, i.e. the maximum ratio between the same radii (unit: none, type: double);
- **num_samples**, i.e. the number of samples uniformly taken between min_r21 and max_r21.
- **transfer_radii_ratios**, i.e. the list of all values of r_m1 (the ratio between the distance of the transfer point between the two elliptic orbits and the radius of the first orbit) to consider during the test (unit: none, type; vector<double>).
- **short_filename**, i.e. whether the output filenames should be shortened. Setting its value to false is recommended when several entries of transfer_radii_ratios have the same floored value (unit: none, type: bool). 

The user can either set those parameters directly in the source code or as arguments in the command line execution of the program (in the same order as above).

After the calculation, the program creates a number of .txt files in the same folder as the executabe file:
- **output_hohmann.txt** gives the energy efficiency of the Hohmann trasnfer for**num_samples** values of r_21 between its minimum and maximum set values.
- **output_bi_ellipticxxx.txt** gives the energy efficiency of the bi-elliptic transfer for those same values, with a value of r_m1 equal to xxx. If **short_filename** is set to false, the filename will always include decimals.