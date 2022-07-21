OpenFoam (v9) - Aerospike CFD

Very useful introduction
https://maplekeylabs.com/understanding-the-openfoam-case-structure/

KOmegaSST
https://www.openfoam.com/documentation/guides/latest/doc/guide-turbulence-ras-k-omega-sst.html#sec-turbulence-ras-k-omega-sst-initialisation

KOmegeSST Setup Boundary Conditions (IMPORTANT)
https://curiosityfluids.com/2019/02/11/basic-komega-sst-boundary-conditions/

nut:    kinematic turbulence _viscosity_

omega:  specific dissipation rate

k:      turbulent kinetic _energy_

alphat: __________

Turbulence Kinematic Energy - Equation Explained
https://en.wikipedia.org/wiki/Turbulence_kinetic_energy

Decompose Video
https://www.youtube.com/watch?v=bHMdh_l45M0&t=1s

How to Run It?
**************************
0) ./Allclean
1) UNV file to OpenFoam
ideasUnvToFoam meshes/aerospike_refined_2.unv
2) Go to polyMesh/boundaries and change the types!
- walls -> type: wall
- front -> type: empty
- back -> type: empty
- symmetry -> type: symmetry
3) Field initialization to help the solver
setFields
4) Decompose in 4 parts (can do more or less depending on your setup)
DecomposePar
5) Run the solver in PARALLEL ("> log" saves the output to a file named log)
mpirun -np 4 rhoCentralFoam -parallel > log
6) ReconstructPar
7) paraFoam