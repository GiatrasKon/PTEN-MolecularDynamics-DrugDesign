# Molecular Dynamics Simulation and Computer-Aided Drug Design for PTEN Protein

This repository contains the results and workflows from a comprehensive study on the PTEN protein using molecular dynamics simulations and computer-aided drug design (CADD). PTEN is a tumor suppressor protein with crucial roles in maintaining cellular homeostasis and regulating signaling pathways. This study combines computational techniques to simulate PTEN's behavior, identify potential binding sites, and screen for promising ligands that can modulate its activity for therapeutic applications.

This analysis was performed as part of the midterm and final projects for the "Molecular Modeling of Biomolecules" graduate course of the MSc Data Science & Information Technologies Master's programme (Bioinformatics - Biomedical Data Science Specialization) of the Department of Informatics and Telecommunications department of the National and Kapodistrian University of Athens (NKUA), under the supervision of professor Zoe Cournia, in the academic year 2022-2023.

---

## Project Overview

The project focuses on:
1. **Molecular Dynamics Simulations (MD)**: Simulating PTEN's motion and analyzing its stability and flexibility.
2. **Binding Site Detection**: Using computational tools to identify and characterize potential ligand-binding sites.
3. **Virtual Screening and Filtering**: Screening thousands of small molecules for binding affinity and filtering them based on pharmacokinetic properties.
4. **Clustering and Selection**: Grouping compounds into clusters and selecting exemplars for further analysis.

## Workflows and Tools
1. Molecular Dynamics Simulations
   - **Protein Preparation**: Preparing the PTEN structure using VMD and Maestro by removing waters, assigning bond orders, filling in missing residues and solvating and neutralizing the system.
   - **Simulations**: Minimization, heating, equilibration, and production dynamics using NAMD with the CHARMM force field.
   - **Trajectory Analysis**: Calculating root mean square deviations (RMSD) and identifying structural flexibility using VMD.
2. Drug Design Workflow
   - **Binding Site Detection** : Using Maestro's SiteMap to identify five binding sites and select the most promising one based on topology and SiteScore.
   - **Virtual Screening**: Docking the Maybridge database (~24,000 compounds) with Maestro's Glide tool.
   - **Filtering**: Applying van der Waals and toxicity filters via ChemBioServer, followed by property-based filtering using Maestro's QikProp.
   - **Clustering**: Hierarchical clustering of compounds using Tanimoto indices to identify diverse candidate molecules.
3. Results
   - **Five Candidate Compounds**: Selected based on structural criteria (rotatable bonds, chirality) and evaluated for binding interactions with PTEN.
   - **Key Insights**: Highlighted PTEN's flexibility and identified potential modulators through robust computational techniques.

The analysis steps are described in detail in the midterm and final project reports and presentation in the `documents` directory.

---

## Cloning the Repository
To get a copy of this project, run:
```bash
git clone https://github.com/GiatrasKon/PTEN-MolecularDynamics-DrugDesign.git
```

## Dependencies

- [VMD](https://www.ks.uiuc.edu/Development/Download/download.cgi?PackageName=VMD)
- [NAMD](https://www.ks.uiuc.edu/Development/Download/download.cgi?PackageName=NAMD)
- [XMGrace](https://plasma-gate.weizmann.ac.il/Grace/)
- [mdtraj](https://www.mdtraj.org/1.9.8.dev0/index.html)
- [scipy](https://scipy.org/)
- [numpy](https://numpy.org/)
- [matplotlib](https://matplotlib.org/)
- [Maestro Suite](https://www.schrodinger.com/platform/products/maestro/)
- [ChemBioServer](https://chembioserver.vi-seem.eu/)

---