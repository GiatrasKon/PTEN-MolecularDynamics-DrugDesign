# Running the minimization using NAMD2
namd2 1D5R_wb_ionized_mini.conf > 1D5R_wb_ionized_mini.log &

# Extracting the energy from the minimization log file to visualize how it changes over time
grep ’ENERGY:’ 1D5R_wb_ionized_mini.log > 1D5R_wb_ionized_mini.dat

# Running the heating using NAMD2
namd2 1D5R_wb_ionized_heat.conf > 1D5R_wb_ionized_heat.log &

# Extracting the energy from the heating log file to visualize how it changes over time
grep ’ENERGY:’ 1D5R_wb_ionized_heat.log > 1D5R_wb_ionized_heat.dat

# Running the equilibration using NAMD2
namd2 1D5R_wb_ionized_equil.conf > 1D5R_wb_ionized_equil.log &

# Extracting the energy from the equilibration log file to visualize how it changes over time
grep ’ENERGY:’ 1D5R_wb_ionized_equil.log > 1D5R_wb_ionized_equil.dat

# Running the second equilibration using NAMD2
namd2 1D5R_wb_ionized_equil2.conf > 1D5R_wb_ionized_equil2.log &

# Extracting the energy from the second equilibration log file to visualize how it changes over time
grep ’ENERGY:’ 1D5R_wb_ionized_equil2.log > 1D5R_wb_ionized_equil2.dat

# Running the production using NAMD2
namd2 1D5R_wb_ionized_prod.conf > 1D5R_wb_ionized_prod.log &

# Extracting the energy from the production dynamics log file to visualize how it changes over time
grep ’ENERGY:’ 1D5R_wb_ionized_prod.log > 1D5R_wb_ionized_prod.dat