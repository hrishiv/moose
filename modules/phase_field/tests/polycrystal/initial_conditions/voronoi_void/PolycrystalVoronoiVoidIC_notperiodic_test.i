[Mesh]
  type = GeneratedMesh
  dim = 2
  nx = 85
  ny = 85
  nz = 0
  xmax = 250
  ymax = 250
  zmax = 0
  elem_type = QUAD4
[]

[GlobalParams]
  op_num = 5
  grain_num = 5
  var_name_base = gr
  numbub = 20
  bubspac = 22
  radius = 8
  int_width = 10
  invalue = 1
  outvalue = 0.1
[]

[Variables]
  [./c]
  [../]
  [./w]
    scaling = 1.0e4
  [../]
  [./PolycrystalVariables]
  [../]
[]

[ICs]
  [./PolycrystalICs]
    [./PolycrystalVoronoiVoidIC]
    [../]
  [../]
  [./c_IC]
    variable = c
    type = PolycrystalVoronoiVoidIC
    structure_type = voids
  [../]
[]

[Problem]
  type = FEProblem
  solve = false
[]

[Executioner]
  type = Transient
  num_steps = 0
[]

[Outputs]
  file_base = notperiodic
  exodus = true
[]

