# In VMD's TkConsole window, after loading the 1D5R.pdb file, run the following commands to remove water molecules from the protein structure and save the new structure to a new file
set protein [atomselect top protein]
$protein writepdb 1D5R_noW.pdb

# After generating the PSF file with VMD's AutoPSF Builder, we solvate the protein structure in a water box using the following commands in VMD's TkConsole window
package require solvate
solvate 1D5R_autopsf.psf 1D5R_autopsf.pdb -t 15 -o 1D5R_wb

# Neutralizing the system and adding an additional 150mM NaCl to the water box using the following commands in VMD's TkConsole window
package require autoionize
autoionize -psf 1D5R_wb.psf -pdb 1D5R_wb.pdb -sc 0.15 -cation SOD

# Analyze all atoms in the system and get the minimum and maximum values of x, y and z coordinates of the entire protein-water system using the following commands in VMD's TkConsole window
set everyone [atomselect top all]
measure minmax $everyone

# Determine the coordinates of the center of your water box using the following commands in VMD's TkConsole window
measure center $everyone

# After production dynamics simulation is complete (namd2 runs), use a script within VMD to compute the average RMSD of each residue in your protein, and assign this value to the User field for each residue
source residue_rmsd.tcl
set sel_resid [[atomselect top "protein and alpha"] get resid] # get the residue numbers of all the α-carbons in the protein
rmsd_residue_over_time top $sel_resid
xmgrace residue_rmsd.dat # plot the RMSD value per residue