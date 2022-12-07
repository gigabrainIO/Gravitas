(* ::Package:: *)

MetricTensor[] := {"Symmetric", "SymmetricField", "Asymmetric", "AsymmetricField", "Euclidean", "Minkowski", 
   "Schwarzschild", "IsotropicSchwarzschild", "Kerr", "ReissnerNordstrom", "Godel", "FLRW"}
MetricTensor[dimensionCount_Integer] := 
  MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", Sort[#1]] & ) /@ Tuples[Range[dimensionCount], 2]]], 
   (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[dimensionCount], True, True]
MetricTensor[dimensionCount_Integer, coordinates_List] := 
  MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", Sort[#1]] & ) /@ Tuples[Range[dimensionCount], 2]]], 
    coordinates, True, True] /; Length[coordinates] == dimensionCount
MetricTensor[dimensionCount_Integer, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", Sort[#1]] & ) /@ Tuples[Range[dimensionCount], 2]]], 
    (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[dimensionCount], index1, index2] /; 
   BooleanQ[index1] && BooleanQ[index2]
MetricTensor[dimensionCount_Integer, coordinates_List, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", Sort[#1]] & ) /@ Tuples[Range[dimensionCount], 2]]], 
    coordinates, index1, index2] /; Length[coordinates] == dimensionCount && BooleanQ[index1] && BooleanQ[index2]
MetricTensor["Symmetric"] := MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", Sort[#1]] & ) /@ 
      Tuples[Range[4], 2]]], (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[4], True, True]
MetricTensor["Symmetric", coordinates_List] := 
  MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", Sort[#1]] & ) /@ Tuples[Range[4], 2]]], coordinates, True, 
    True] /; Length[coordinates] == 4
MetricTensor["Symmetric", index1_, index2_] := 
  MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", Sort[#1]] & ) /@ Tuples[Range[4], 2]]], 
    (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[4], index1, index2] /; BooleanQ[index1] && BooleanQ[index2]
MetricTensor["Symmetric", coordinates_List, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", Sort[#1]] & ) /@ Tuples[Range[4], 2]]], coordinates, index1, 
    index2] /; Length[coordinates] == 4 && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"Symmetric", dimensionCount_Integer}] := 
  MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", Sort[#1]] & ) /@ Tuples[Range[dimensionCount], 2]]], 
   (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[dimensionCount], True, True]
MetricTensor[{"Symmetric", dimensionCount_Integer}, coordinates_List] := 
  MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", Sort[#1]] & ) /@ Tuples[Range[dimensionCount], 2]]], 
    coordinates, True, True] /; Length[coordinates] == dimensionCount
MetricTensor[{"Symmetric", dimensionCount_Integer}, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", Sort[#1]] & ) /@ Tuples[Range[dimensionCount], 2]]], 
    (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[dimensionCount], index1, index2] /; 
   BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"Symmetric", dimensionCount_Integer}, coordinates_List, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", Sort[#1]] & ) /@ Tuples[Range[dimensionCount], 2]]], 
    coordinates, index1, index2] /; Length[coordinates] == dimensionCount && BooleanQ[index1] && BooleanQ[index2]
MetricTensor["SymmetricField"] := 
  MetricTensor[
   Normal[SparseArray[(Module[{index = #1}, index -> Subscript["\[FormalG]", Sort[index]] @@ 
          (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[4]] & ) /@ Tuples[Range[4], 2]]], 
   (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[4], True, True]
MetricTensor["SymmetricField", coordinates_List] := 
  MetricTensor[Normal[SparseArray[(Module[{index = #1}, index -> Subscript["\[FormalG]", Sort[index]] @@ coordinates] & ) /@ 
       Tuples[Range[4], 2]]], coordinates, True, True] /; Length[coordinates] == 4
MetricTensor["SymmetricField", index1_, index2_] := 
  MetricTensor[Normal[SparseArray[(Module[{index = #1}, index -> Subscript["\[FormalG]", Sort[index]] @@ 
           (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[4]] & ) /@ Tuples[Range[4], 2]]], 
    (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[4], index1, index2] /; BooleanQ[index1] && BooleanQ[index2]
MetricTensor["SymmetricField", coordinates_List, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[(Module[{index = #1}, index -> Subscript["\[FormalG]", Sort[index]] @@ coordinates] & ) /@ 
       Tuples[Range[4], 2]]], coordinates, index1, index2] /; Length[coordinates] == 4 && BooleanQ[index1] && 
    BooleanQ[index2]
MetricTensor[{"SymmetricField", dimensionCount_Integer}] := 
  MetricTensor[
   Normal[SparseArray[(Module[{index = #1}, index -> Subscript["\[FormalG]", Sort[index]] @@ 
          (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[dimensionCount]] & ) /@ Tuples[Range[dimensionCount], 2]]], 
   (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[dimensionCount], True, True]
MetricTensor[{"SymmetricField", dimensionCount_Integer}, coordinates_List] := 
  MetricTensor[Normal[SparseArray[(Module[{index = #1}, index -> Subscript["\[FormalG]", Sort[index]] @@ coordinates] & ) /@ 
       Tuples[Range[dimensionCount], 2]]], coordinates, True, True] /; Length[coordinates] == dimensionCount
MetricTensor[{"SymmetricField", dimensionCount_Integer}, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[(Module[{index = #1}, index -> Subscript["\[FormalG]", Sort[index]] @@ 
           (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[dimensionCount]] & ) /@ Tuples[Range[dimensionCount], 2]]], 
    (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[dimensionCount], index1, index2] /; 
   BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"SymmetricField", dimensionCount_Integer}, coordinates_List, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[(Module[{index = #1}, index -> Subscript["\[FormalG]", Sort[index]] @@ coordinates] & ) /@ 
       Tuples[Range[dimensionCount], 2]]], coordinates, index1, index2] /; Length[coordinates] == dimensionCount && 
    BooleanQ[index1] && BooleanQ[index2]
MetricTensor["Asymmetric"] := MetricTensor[Normal[SparseArray[(#1 -> Subscript["g", #1] & ) /@ Tuples[Range[4], 2]]], 
   (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[4], True, True]
MetricTensor["Asymmetric", coordinates_List] := 
  MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", #1] & ) /@ Tuples[Range[4], 2]]], coordinates, True, True] /; 
   Length[coordinates] == 4
MetricTensor["Asymmetric", index1_, index2_] := 
  MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", #1] & ) /@ Tuples[Range[4], 2]]], 
    (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[4], index1, index2] /; BooleanQ[index1] && BooleanQ[index2]
MetricTensor["Asymmetric", coordinates_List, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", #1] & ) /@ Tuples[Range[4], 2]]], coordinates, index1, 
    index2] /; Length[coordinates] == 4 && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"Asymmetric", dimensionCount_Integer}] := 
  MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", #1] & ) /@ Tuples[Range[dimensionCount], 2]]], 
   (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[dimensionCount], True, True]
MetricTensor[{"Asymmetric", dimensionCount_Integer}, coordinates_List] := 
  MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", #1] & ) /@ Tuples[Range[dimensionCount], 2]]], coordinates, 
    True, True] /; Length[coordinates] == dimensionCount
MetricTensor[{"Asymmetric", dimensionCount_Integer}, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", #1] & ) /@ Tuples[Range[dimensionCount], 2]]], 
    (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[dimensionCount], index1, index2] /; 
   BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"Asymmetric", dimensionCount_Integer}, coordinates_List, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[(#1 -> Subscript["\[FormalG]", #1] & ) /@ Tuples[Range[dimensionCount], 2]]], coordinates, 
    index1, index2] /; Length[coordinates] == dimensionCount && BooleanQ[index1] && BooleanQ[index2]
MetricTensor["AsymmetricField"] := 
  MetricTensor[
   Normal[SparseArray[(Module[{index = #1}, index -> Subscript["\[FormalG]", index] @@ (Superscript["\[FormalX]", ToString[#1]] & ) /@ 
           Range[4]] & ) /@ Tuples[Range[4], 2]]], (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[4], True, True]
MetricTensor["AsymmetricField", coordinates_List] := 
  MetricTensor[Normal[SparseArray[(Module[{index = #1}, index -> Subscript["\[FormalG]", index] @@ coordinates] & ) /@ 
       Tuples[Range[4], 2]]], coordinates, True, True] /; Length[coordinates] == 4
MetricTensor["AsymmetricField", index1_, index2_] := 
  MetricTensor[Normal[SparseArray[(Module[{index = #1}, index -> Subscript["\[FormalG]", index] @@ 
           (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[4]] & ) /@ Tuples[Range[4], 2]]], 
    (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[4], index1, index2] /; BooleanQ[index1] && BooleanQ[index2]
MetricTensor["AsymmetricField", coordinates_List, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[(Module[{index = #1}, index -> Subscript["\[FormalG]", index] @@ coordinates] & ) /@ 
       Tuples[Range[4], 2]]], coordinates, index1, index2] /; Length[coordinates] == 4 && BooleanQ[index1] && 
    BooleanQ[index2]
MetricTensor[{"AymmetricField", dimensionCount_Integer}] := 
  MetricTensor[
   Normal[SparseArray[(Module[{index = #1}, index -> Subscript["\[FormalG]", index] @@ (Superscript["\[FormalX]", ToString[#1]] & ) /@ 
           Range[dimensionCount]] & ) /@ Tuples[Range[dimensionCount], 2]]], 
   (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[dimensionCount], True, True]
MetricTensor[{"AsymmetricField", dimensionCount_Integer}, coordinates_List] := 
  MetricTensor[Normal[SparseArray[(Module[{index = #1}, index -> Subscript["\[FormalG]", index] @@ coordinates] & ) /@ 
       Tuples[Range[dimensionCount], 2]]], coordinates, True, True] /; Length[coordinates] == dimensionCount
MetricTensor[{"AsymmetricField", dimensionCount_Integer}, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[(Module[{index = #1}, index -> Subscript["\[FormalG]", index] @@ 
           (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[dimensionCount]] & ) /@ Tuples[Range[dimensionCount], 2]]], 
    (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[dimensionCount], index1, index2] /; 
   BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"AsymmetricField", dimensionCount_Integer}, coordinates_List, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[(Module[{index = #1}, index -> Subscript["\[FormalG]", index] @@ coordinates] & ) /@ 
       Tuples[Range[dimensionCount], 2]]], coordinates, index1, index2] /; Length[coordinates] == dimensionCount && 
    BooleanQ[index1] && BooleanQ[index2]
MetricTensor["Euclidean"] := MetricTensor[DiagonalMatrix[ConstantArray[1, 3]], 
   (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[3], True, True]
MetricTensor["Euclidean", coordinates_List] := MetricTensor[DiagonalMatrix[ConstantArray[1, 3]], coordinates, True, 
    True] /; Length[coordinates] == 3
MetricTensor["Euclidean", index1_, index2_] := MetricTensor[DiagonalMatrix[ConstantArray[1, 3]], 
    (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[3], index1, index2] /; BooleanQ[index1] && BooleanQ[index2]
MetricTensor["Euclidean", coordinates_List, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[ConstantArray[1, 3]], coordinates, index1, index2] /; 
   Length[coordinates] == 3 && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"Euclidean", dimensionCount_Integer}] := MetricTensor[DiagonalMatrix[ConstantArray[1, dimensionCount]], 
   (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[dimensionCount], True, True]
MetricTensor[{"Euclidean", dimensionCount_Integer}, coordinates_List] := 
  MetricTensor[DiagonalMatrix[ConstantArray[1, dimensionCount]], coordinates, True, True] /; 
   Length[coordinates] == dimensionCount
MetricTensor[{"Euclidean", dimensionCount_Integer}, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[ConstantArray[1, dimensionCount]], (Superscript["\[FormalX]", ToString[#1]] & ) /@ 
     Range[dimensionCount], index1, index2] /; BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"Euclidean", dimensionCount_Integer}, coordinates_List, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[ConstantArray[1, dimensionCount]], coordinates, index1, index2] /; 
   Length[coordinates] == dimensionCount && BooleanQ[index1] && BooleanQ[index2]
MetricTensor["Minkowski"] := MetricTensor[DiagonalMatrix[Join[{-1}, ConstantArray[1, 3]]], 
   Join[{"\[FormalT]"}, (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[3]], True, True]
MetricTensor["Minkowski", coordinates_List] := MetricTensor[DiagonalMatrix[Join[{-1}, ConstantArray[1, 3]]], coordinates, 
    True, True] /; Length[coordinates] == 4
MetricTensor["Minkowski", index1_, index2_] := MetricTensor[DiagonalMatrix[Join[{-1}, ConstantArray[1, 3]]], 
    Join[{"\[FormalT]"}, (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[3]], index1, index2] /; 
   BooleanQ[index1] && BooleanQ[index2]
MetricTensor["Minkowski", coordinates_List, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[Join[{-1}, ConstantArray[1, 3]]], coordinates, index1, index2] /; 
   Length[coordinates] == 4 && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"Minkowski", dimensionCount_Integer}] := 
  MetricTensor[DiagonalMatrix[Join[{-1}, ConstantArray[1, dimensionCount - 1]]], 
   Join[{"\[FormalT]"}, (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[dimensionCount - 1]], True, True]
MetricTensor[{"Minkowski", dimensionCount_Integer}, coordinates_List] := 
  MetricTensor[DiagonalMatrix[Join[{-1}, ConstantArray[1, dimensionCount - 1]]], coordinates, True, True] /; 
   Length[coordinates] == dimensionCount
MetricTensor[{"Minkowski", dimensionCount_Integer}, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[Join[{-1}, ConstantArray[1, dimensionCount - 1]]], 
    Join[{"\[FormalT]"}, (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[dimensionCount - 1]], index1, index2] /; 
   BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"Minkowski", dimensionCount_Integer}, coordinates_List, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[Join[{-1}, ConstantArray[1, dimensionCount - 1]]], coordinates, index1, index2] /; 
   Length[coordinates] == dimensionCount && BooleanQ[index1] && BooleanQ[index2]
MetricTensor["Schwarzschild"] := MetricTensor[DiagonalMatrix[{-(1 - (2*"\[FormalCapitalM]")/"\[FormalR]"), 1/(1 - (2*"\[FormalCapitalM]")/"\[FormalR]"), "\[FormalR]"^2, 
     "\[FormalR]"^2*Sin["\[FormalTheta]"]^2}], {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, True, True]
MetricTensor["Schwarzschild", coordinates_List] := 
  MetricTensor[DiagonalMatrix[{-(1 - (2*"\[FormalCapitalM]")/coordinates[[2]]), 1/(1 - (2*"\[FormalCapitalM]")/coordinates[[2]]), coordinates[[2]]^2, 
      coordinates[[2]]^2*Sin[coordinates[[3]]]^2}], coordinates, True, True] /; Length[coordinates] == 4
MetricTensor["Schwarzschild", index1_, index2_] := 
  MetricTensor[DiagonalMatrix[{-(1 - (2*"\[FormalCapitalM]")/"\[FormalR]"), 1/(1 - (2*"\[FormalCapitalM]")/"\[FormalR]"), "\[FormalR]"^2, "\[FormalR]"^2*Sin["\[Theta]"]^2}], 
    {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, index1, index2] /; BooleanQ[index1] && BooleanQ[index2]
MetricTensor["Schwarzschild", coordinates_List, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[{-(1 - (2*"\[FormalCapitalM]")/coordinates[[2]]), 1/(1 - (2*"\[FormalCapitalM]")/coordinates[[2]]), coordinates[[2]]^2, 
      coordinates[[2]]^2*Sin[coordinates[[3]]]^2}], coordinates, index1, index2] /; 
   Length[coordinates] == 4 && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"Schwarzschild", mass_}] := MetricTensor[DiagonalMatrix[{-(1 - (2*mass)/"\[FormalR]"), 1/(1 - (2*mass)/"\[FormalR]"), 
     "\[FormalR]"^2, "\[FormalR]"^2*Sin["\[FormalTheta]"]^2}], {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, True, True]
MetricTensor[{"Schwarzschild", mass_}, coordinates_List] := 
  MetricTensor[DiagonalMatrix[{-(1 - (2*mass)/coordinates[[2]]), 1/(1 - (2*mass)/coordinates[[2]]), coordinates[[2]]^2, 
      coordinates[[2]]^2*Sin[coordinates[[3]]]^2}], coordinates, True, True] /; Length[coordinates] == 4
MetricTensor[{"Schwarzschild", mass_}, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[{-(1 - (2*mass)/"\[FormalR]"), 1/(1 - (2*mass)/"\[FormalR]"), "\[FormalR]"^2, "\[FormalR]"^2*Sin["\[FormalTheta]"]^2}], 
    {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, index1, index2] /; BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"Schwarzschild", mass_}, coordinates_List, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[{-(1 - (2*mass)/coordinates[[2]]), 1/(1 - (2*mass)/coordinates[[2]]), coordinates[[2]]^2, 
      coordinates[[2]]^2*Sin[coordinates[[3]]]^2}], coordinates, index2, index2] /; 
   Length[coordinates] == 4 && BooleanQ[index1] && BooleanQ[index2]
MetricTensor["IsotropicSchwarzschild"] := 
  MetricTensor[DiagonalMatrix[Join[{-((1 - "\[FormalCapitalM]"/(2*Sqrt["\[FormalX]"^2 + "\[FormalY]"^2 + "\[FormalZ]"^2]))^2/
        (1 + "\[FormalCapitalM]"/(2*Sqrt["\[FormalX]"^2 + "\[FormalY]"^2 + "\[FormalZ]"^2]))^2)}, 
     ConstantArray[(1 + "\[FormalCapitalM]"/(2*Sqrt["\[FormalX]"^2 + "\[FormalY]"^2 + "\[FormalZ]"^2]))^4, 3]]], {"\[FormalT]", "\[FormalX]", "\[FormalY]", "\[FormalZ]"}, True, True]
MetricTensor["IsotropicSchwarzschild", coordinates_List] := 
  MetricTensor[DiagonalMatrix[Join[{-((1 - "\[FormalCapitalM]"/(2*Sqrt[coordinates[[2]]^2 + coordinates[[3]]^2 + coordinates[[4]]^2]))^
          2/(1 + "\[FormalCapitalM]"/(2*Sqrt[coordinates[[2]]^2 + coordinates[[3]]^2 + coordinates[[4]]^2]))^2)}, 
      ConstantArray[(1 + "\[FormalCapitalM]"/(2*Sqrt[coordinates[[2]]^2 + coordinates[[3]]^2 + coordinates[[4]]^2]))^4, 3]]], 
    coordinates, True, True] /; Length[coordinates] == 4
MetricTensor["IsotropicSchwarzschild", index1_, index2_] := 
  MetricTensor[DiagonalMatrix[Join[{-((1 - "\[FormalCapitalM]"/(2*Sqrt["\[FormalX]"^2 + "\[FormalY]"^2 + "\[FormalZ]"^2]))^2/
         (1 + "\[FormalCapitalM]"/(2*Sqrt["\[FormalX]"^2 + "\[FormalY]"^2 + "\[FormalZ]"^2]))^2)}, 
      ConstantArray[(1 + "\[FormalCapitalM]"/(2*Sqrt["\[FormalX]"^2 + "\[FormalY]"^2 + "\[FormalZ]"^2]))^4, 3]]], {"\[FormalT]", "\[FormalX]", "\[FormalY]", "\[FormalZ]"}, index1, 
    index2] /; BooleanQ[index1] && BooleanQ[index2]
MetricTensor["IsotropicSchwarzschild", coordinates_List, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[Join[{-((1 - "\[FormalCapitalM]"/(2*Sqrt[coordinates[[2]]^2 + coordinates[[3]]^2 + coordinates[[4]]^2]))^
          2/(1 + "\[FormalCapitalM]"/(2*Sqrt[coordinates[[2]]^2 + coordinates[[3]]^2 + coordinates[[4]]^2]))^2)}, 
      ConstantArray[(1 + "\[FormalCapitalM]"/(2*Sqrt[coordinates[[2]]^2 + coordinates[[3]]^2 + coordinates[[4]]^2]))^4, 3]]], 
    coordinates, index1, index2] /; Length[coordinates] == 4 && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"IsotropicSchwarzschild", mass_}] := 
  MetricTensor[DiagonalMatrix[Join[{-((1 - mass/(2*Sqrt["\[FormalX]"^2 + "\[FormalY]"^2 + "\[FormalZ]"^2]))^2/
        (1 + mass/(2*Sqrt["\[FormalX]"^2 + "\[FormalY]"^2 + "\[FormalZ]"^2]))^2)}, 
     ConstantArray[(1 + mass/(2*Sqrt["\[FormalX]"^2 + "\[FormalY]"^2 + "\[FormalZ]"^2]))^4, 3]]], {"\[FormalT]", "\[FormalX]", "\[FormalY]", "\[FormalZ]"}, True, True]
MetricTensor[{"IsotropicSchwarzschild", mass_}, coordinates_List] := 
  MetricTensor[DiagonalMatrix[Join[{-((1 - mass/(2*Sqrt[coordinates[[2]]^2 + coordinates[[3]]^2 + coordinates[[4]]^2]))^2/
         (1 + mass/(2*Sqrt[coordinates[[2]]^2 + coordinates[[3]]^2 + coordinates[[4]]^2]))^2)}, 
      ConstantArray[(1 + mass/(2*Sqrt[coordinates[[2]]^2 + coordinates[[3]]^2 + coordinates[[4]]^2]))^4, 3]]], 
    coordinates, True, True] /; Length[coordinates] == 4
MetricTensor[{"IsotropicSchwarzschild", mass_}, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[Join[{-((1 - mass/(2*Sqrt["\[FormalX]"^2 + "\[FormalY]"^2 + "\[FormalZ]"^2]))^2/
         (1 + mass/(2*Sqrt["\[FormalX]"^2 + "\[FormalY]"^2 + "\[FormalZ]"^2]))^2)}, 
      ConstantArray[(1 + mass/(2*Sqrt["\[FormalX]"^2 + "\[FormalY]"^2 + "\[FormalZ]"^2]))^4, 3]]], {"\[FormalT]", "\[FormalX]", "\[FormalY]", "\[FormalZ]"}, index1, 
    index2] /; BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"IsotropicSchwarzschild", mass_}, coordinates_List, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[Join[{-((1 - mass/(2*Sqrt[coordinates[[2]]^2 + coordinates[[3]]^2 + coordinates[[4]]^2]))^2/
         (1 + mass/(2*Sqrt[coordinates[[2]]^2 + coordinates[[3]]^2 + coordinates[[4]]^2]))^2)}, 
      ConstantArray[(1 + mass/(2*Sqrt[coordinates[[2]]^2 + coordinates[[3]]^2 + coordinates[[4]]^2]))^4, 3]]], 
    coordinates, index1, index2] /; Length[coordinates] == 4 && BooleanQ[index1] && BooleanQ[index2]
MetricTensor["EddingtonFinkelstein"] := 
  MetricTensor[Normal[SparseArray[{{1, 1} -> -(1 - (2*"\[FormalCapitalM]")/"\[FormalR]"), {1, 2} -> \[PlusMinus]1, {2, 1} -> \[PlusMinus]1, {3, 3} -> "\[FormalR]"^2, 
      {4, 4} -> "\[FormalR]"^2*Sin["\[FormalTheta]"]^2}]], {"\[FormalCapitalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, True, True]
MetricTensor["KruskalSzekeres"] := Module[{radialCoordinate}, 
   radialCoordinate = (2*"\[FormalCapitalM]")*(1 + ProductLog[("\[FormalCapitalX]"^2 - "\[FormalCapitalT]"^2)/E]); 
    MetricTensor[DiagonalMatrix[{(-((32*"\[FormalCapitalM]"^3)/radialCoordinate))*Exp[-(radialCoordinate/(2*"\[FormalCapitalM]"))], 
       ((32*"\[FormalCapitalM]"^3)/radialCoordinate)*Exp[-(radialCoordinate/(2*"\[FormalCapitalM]"))], radialCoordinate^2, 
       radialCoordinate^2*Sin["\[FormalTheta]"]^2}], {"\[FormalCapitalT]", "\[FormalCapitalX]", "\[FormalTheta]", "\[FormalPhi]"}, True, True]]
MetricTensor["Kerr"] := MetricTensor[
   Normal[SparseArray[{{1, 1} -> -(1 - (2*"\[FormalCapitalM]"*"\[FormalR]")/("\[FormalR]"^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos["\[FormalTheta]"]^2)), 
      {2, 2} -> ("\[FormalR]"^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos["\[FormalTheta]"]^2)/("\[FormalR]"^2 - 2*"\[FormalCapitalM]"*"\[FormalR]" + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2), 
      {3, 3} -> "\[FormalR]"^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos["\[FormalTheta]"]^2, 
      {4, 4} -> ("\[FormalR]"^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2 + (2*"\[FormalR]"*("\[FormalCapitalJ]"^2/"\[FormalCapitalM]")*Sin["\[FormalTheta]"]^2)/
          ("\[FormalR]"^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos["\[FormalTheta]"]^2))*Sin["\[FormalTheta]"]^2, 
      {1, 4} -> (-2*"\[FormalR]"*"\[FormalCapitalJ]"*Sin["\[FormalTheta]"]^2)/("\[FormalR]"^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos["\[FormalTheta]"]^2), 
      {4, 1} -> (-2*"\[FormalR]"*"\[FormalCapitalJ]"*Sin["\[FormalTheta]"]^2)/("\[FormalR]"^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos["\[FormalTheta]"]^2)}]], {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, 
   True, True]
MetricTensor["Kerr", coordinates_List] := 
  MetricTensor[Normal[SparseArray[
      {{1, 1} -> -(1 - (2*"\[FormalCapitalM]"*coordinates[[2]])/(coordinates[[2]]^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos[coordinates[[3]]]^2)), 
       {2, 2} -> (coordinates[[2]]^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos[coordinates[[3]]]^2)/(coordinates[[2]]^2 - 
          2*"\[FormalCapitalM]"*coordinates[[2]] + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2), {3, 3} -> coordinates[[2]]^2 + 
         ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos[coordinates[[3]]]^2, {4, 4} -> (coordinates[[2]]^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2 + 
          (2*coordinates[[2]]*("\[FormalCapitalJ]"^2/"\[FormalCapitalM]")*Sin[coordinates[[3]]]^2)/(coordinates[[2]]^2 + 
            ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos[coordinates[[3]]]^2))*Sin[coordinates[[3]]]^2, 
       {1, 4} -> (-2*coordinates[[2]]*"\[FormalCapitalJ]"*Sin[coordinates[[3]]]^2)/(coordinates[[2]]^2 + 
          ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos[coordinates[[3]]]^2), {4, 1} -> (-2*coordinates[[2]]*"\[FormalCapitalJ]"*Sin[coordinates[[3]]]^2)/
         (coordinates[[2]]^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos[coordinates[[3]]]^2)}]], coordinates, True, True] /; 
   Length[coordinates] == 4
MetricTensor["Kerr", index1_, index2_] := 
  MetricTensor[Normal[SparseArray[{{1, 1} -> -(1 - (2*"\[FormalCapitalM]"*"\[FormalR]")/("\[FormalR]"^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos["\[FormalTheta]"]^2)), 
       {2, 2} -> ("\[FormalR]"^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos["\[FormalTheta]"]^2)/("\[FormalR]"^2 - 2*"\[FormalCapitalM]"*"\[FormalR]" + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2), 
       {3, 3} -> "\[FormalR]"^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos["\[FormalTheta]"]^2, 
       {4, 4} -> ("\[FormalR]"^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2 + (2*"\[FormalR]"*("\[FormalCapitalJ]"^2/"\[FormalCapitalM]")*Sin["\[FormalTheta]"]^2)/
           ("\[FormalR]"^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos["\[FormalTheta]"]^2))*Sin["\[FormalTheta]"]^2, {1, 4} -> (-2*"\[FormalR]"*"\[FormalCapitalJ]"*Sin["\[FormalTheta]"]^2)/
         ("\[FormalR]"^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos["\[FormalTheta]"]^2), {4, 1} -> (-2*"\[FormalR]"*"\[FormalCapitalJ]"*Sin["\[FormalTheta]"]^2)/
         ("\[FormalR]"^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos["\[FormalTheta]"]^2)}]], {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, index1, index2] /; 
   BooleanQ[index1] && BooleanQ[index2]
MetricTensor["Kerr", coordinates_List, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[
      {{1, 1} -> -(1 - (2*"\[FormalCapitalM]"*coordinates[[2]])/(coordinates[[2]]^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos[coordinates[[3]]]^2)), 
       {2, 2} -> (coordinates[[2]]^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos[coordinates[[3]]]^2)/(coordinates[[2]]^2 - 
          2*"\[FormalCapitalM]"*coordinates[[2]] + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2), {3, 3} -> coordinates[[2]]^2 + 
         ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos[coordinates[[3]]]^2, {4, 4} -> (coordinates[[2]]^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2 + 
          (2*coordinates[[2]]*("\[FormalCapitalJ]"^2/"\[FormalCapitalM]")*Sin[coordinates[[3]]]^2)/(coordinates[[2]]^2 + 
            ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos[coordinates[[3]]]^2))*Sin[coordinates[[3]]]^2, 
       {1, 4} -> (-2*coordinates[[2]]*"\[FormalCapitalJ]"*Sin[coordinates[[3]]]^2)/(coordinates[[2]]^2 + 
          ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos[coordinates[[3]]]^2), {4, 1} -> (-2*coordinates[[2]]*"\[FormalCapitalJ]"*Sin[coordinates[[3]]]^2)/
         (coordinates[[2]]^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*Cos[coordinates[[3]]]^2)}]], coordinates, index1, index2] /; 
   Length[coordinates] == 4 && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"Kerr", mass_}] := 
  MetricTensor[Normal[SparseArray[{{1, 1} -> -(1 - (2*mass*"\[FormalR]")/("\[FormalR]"^2 + ("\[FormalCapitalJ]"/mass)^2*Cos["\[FormalTheta]"]^2)), 
      {2, 2} -> ("\[FormalR]"^2 + ("\[FormalCapitalJ]"/mass)^2*Cos["\[FormalTheta]"]^2)/("\[FormalR]"^2 - 2*mass*"\[FormalR]" + ("\[FormalCapitalJ]"/mass)^2), 
      {3, 3} -> "\[FormalR]"^2 + ("\[FormalCapitalJ]"/mass)^2*Cos["\[FormalTheta]"]^2, 
      {4, 4} -> ("\[FormalR]"^2 + ("\[FormalCapitalJ]"/mass)^2 + (2*"\[FormalR]"*("\[FormalCapitalJ]"^2/mass)*Sin["\[FormalTheta]"]^2)/
          ("\[FormalR]"^2 + ("\[FormalCapitalJ]"/mass)^2*Cos["\[FormalTheta]"]^2))*Sin["\[FormalTheta]"]^2, {1, 4} -> (-2*"\[FormalR]"*"\[FormalCapitalJ]"*Sin["\[FormalTheta]"]^2)/
        ("\[FormalR]"^2 + ("\[FormalCapitalJ]"/mass)^2*Cos["\[FormalTheta]"]^2), {4, 1} -> (-2*"\[FormalR]"*"\[FormalCapitalJ]"*Sin["\[FormalTheta]"]^2)/
        ("\[FormalR]"^2 + ("\[FormalCapitalJ]"/mass)^2*Cos["\[FormalTheta]"]^2)}]], {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, True, True]
MetricTensor[{"Kerr", mass_}, coordinates_] := 
  MetricTensor[Normal[SparseArray[
      {{1, 1} -> -(1 - (2*mass*coordinates[[2]])/(coordinates[[2]]^2 + ("\[FormalCapitalJ]"/mass)^2*Cos[coordinates[[3]]]^2)), 
       {2, 2} -> (coordinates[[2]]^2 + ("\[FormalCapitalJ]"/mass)^2*Cos[coordinates[[3]]]^2)/(coordinates[[2]]^2 - 
          2*mass*coordinates[[2]] + ("\[FormalCapitalJ]"/mass)^2), {3, 3} -> coordinates[[2]]^2 + 
         ("\[FormalCapitalJ]"/mass)^2*Cos[coordinates[[3]]]^2, {4, 4} -> (coordinates[[2]]^2 + ("\[FormalCapitalJ]"/mass)^2 + 
          (2*coordinates[[2]]*("\[FormalCapitalJ]"^2/mass)*Sin[coordinates[[3]]]^2)/(coordinates[[2]]^2 + 
            ("\[FormalCapitalJ]"/mass)^2*Cos[coordinates[[3]]]^2))*Sin[coordinates[[3]]]^2, 
       {1, 4} -> (-2*coordinates[[2]]*"\[FormalCapitalJ]"*Sin[coordinates[[3]]]^2)/(coordinates[[2]]^2 + 
          ("\[FormalCapitalJ]"/mass)^2*Cos[coordinates[[3]]]^2), {4, 1} -> (-2*coordinates[[2]]*"\[FormalCapitalJ]"*Sin[coordinates[[3]]]^2)/
         (coordinates[[2]]^2 + ("\[FormalCapitalJ]"/mass)^2*Cos[coordinates[[3]]]^2)}]], coordinates, True, True] /; 
   Length[coordinates] == 4
MetricTensor[{"Kerr", mass_}, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[{{1, 1} -> -(1 - (2*mass*"\[FormalR]")/("\[FormalR]"^2 + ("\[FormalCapitalJ]"/mass)^2*Cos["\[FormalTheta]"]^2)), 
       {2, 2} -> ("\[FormalR]"^2 + ("\[FormalCapitalJ]"/mass)^2*Cos["\[FormalTheta]"]^2)/("\[FormalR]"^2 - 2*mass*"\[FormalR]" + ("\[FormalCapitalJ]"/mass)^2), 
       {3, 3} -> "\[FormalR]"^2 + ("\[FormalCapitalJ]"/mass)^2*Cos["\[FormalTheta]"]^2, 
       {4, 4} -> ("\[FormalR]"^2 + ("\[FormalCapitalJ]"/mass)^2 + (2*"\[FormalR]"*("\[FormalCapitalJ]"^2/mass)*Sin["\[FormalTheta]"]^2)/
           ("\[FormalR]"^2 + ("\[FormalCapitalJ]"/mass)^2*Cos["\[FormalTheta]"]^2))*Sin["\[FormalTheta]"]^2, {1, 4} -> (-2*"\[FormalR]"*"\[FormalCapitalJ]"*Sin["\[FormalTheta]"]^2)/
         ("\[FormalR]"^2 + ("\[FormalCapitalJ]"/mass)^2*Cos["\[FormalTheta]"]^2), {4, 1} -> (-2*"\[FormalR]"*"\[FormalCapitalJ]"*Sin["\[FormalTheta]"]^2)/
         ("\[FormalR]"^2 + ("\[FormalCapitalJ]"/mass)^2*Cos["\[FormalTheta]"]^2)}]], {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, index1, index2] /; 
   BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"Kerr", mass_}, coordinates_List, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[
      {{1, 1} -> -(1 - (2*mass*coordinates[[2]])/(coordinates[[2]]^2 + ("\[FormalCapitalJ]"/mass)^2*Cos[coordinates[[3]]]^2)), 
       {2, 2} -> (coordinates[[2]]^2 + ("\[FormalCapitalJ]"/mass)^2*Cos[coordinates[[3]]]^2)/(coordinates[[2]]^2 - 
          2*mass*coordinates[[2]] + ("\[FormalCapitalJ]"/mass)^2), {3, 3} -> coordinates[[2]]^2 + 
         ("\[FormalCapitalJ]"/mass)^2*Cos[coordinates[[3]]]^2, {4, 4} -> (coordinates[[2]]^2 + ("\[FormalCapitalJ]"/mass)^2 + 
          (2*coordinates[[2]]*("\[FormalCapitalJ]"^2/mass)*Sin[coordinates[[3]]]^2)/(coordinates[[2]]^2 + 
            ("\[FormalCapitalJ]"/mass)^2*Cos[coordinates[[3]]]^2))*Sin[coordinates[[3]]]^2, 
       {1, 4} -> (-2*coordinates[[2]]*"\[FormalCapitalJ]"*Sin[coordinates[[3]]]^2)/(coordinates[[2]]^2 + 
          ("\[FormalCapitalJ]"/mass)^2*Cos[coordinates[[3]]]^2), {4, 1} -> (-2*coordinates[[2]]*"\[FormalCapitalJ]"*Sin[coordinates[[3]]]^2)/
         (coordinates[[2]]^2 + ("\[FormalCapitalJ]"/mass)^2*Cos[coordinates[[3]]]^2)}]], coordinates, index1, index2] /; 
   Length[coordinates] == 4 && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"Kerr", mass_, angularMomentum_}] := 
  MetricTensor[Normal[SparseArray[{{1, 1} -> -(1 - (2*mass*"\[FormalR]")/("\[FormalR]"^2 + (angularMomentum/mass)^2*Cos["\[FormalTheta]"]^2)), 
      {2, 2} -> ("\[FormalR]"^2 + (angularMomentum/mass)^2*Cos["\[FormalTheta]"]^2)/("\[FormalR]"^2 - 2*mass*"\[FormalR]" + (angularMomentum/mass)^2), 
      {3, 3} -> "\[FormalR]"^2 + (angularMomentum/mass)^2*Cos["\[FormalTheta]"]^2, 
      {4, 4} -> ("\[FormalR]"^2 + (angularMomentum/mass)^2 + (2*"\[FormalR]"*(angularMomentum^2/mass)*Sin["\[FormalTheta]"]^2)/
          ("\[FormalR]"^2 + (angularMomentum/mass)^2*Cos["\[FormalTheta]"]^2))*Sin["\[FormalTheta]"]^2, 
      {1, 4} -> (-2*"\[FormalR]"*angularMomentum*Sin["\[FormalTheta]"]^2)/("\[FormalR]"^2 + (angularMomentum/mass)^2*Cos["\[FormalTheta]"]^2), 
      {4, 1} -> (-2*"\[FormalR]"*angularMomentum*Sin["\[FormalTheta]"]^2)/("\[FormalR]"^2 + (angularMomentum/mass)^2*Cos["\[FormalTheta]"]^2)}]], 
   {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, True, True]
MetricTensor[{"Kerr", mass_, angularMomentum_}, coordinates_List] := 
  MetricTensor[Normal[SparseArray[
      {{1, 1} -> -(1 - (2*mass*coordinates[[2]])/(coordinates[[2]]^2 + (angularMomentum/mass)^2*
             Cos[coordinates[[3]]]^2)), {2, 2} -> (coordinates[[2]]^2 + (angularMomentum/mass)^2*Cos[coordinates[[3]]]^2)/
         (coordinates[[2]]^2 - 2*mass*coordinates[[2]] + (angularMomentum/mass)^2), 
       {3, 3} -> coordinates[[2]]^2 + (angularMomentum/mass)^2*Cos[coordinates[[3]]]^2, 
       {4, 4} -> (coordinates[[2]]^2 + (angularMomentum/mass)^2 + (2*coordinates[[2]]*(angularMomentum^2/mass)*
            Sin[coordinates[[3]]]^2)/(coordinates[[2]]^2 + (angularMomentum/mass)^2*Cos[coordinates[[3]]]^2))*
         Sin[coordinates[[3]]]^2, {1, 4} -> (-2*coordinates[[2]]*angularMomentum*Sin[coordinates[[3]]]^2)/
         (coordinates[[2]]^2 + (angularMomentum/mass)^2*Cos[coordinates[[3]]]^2), 
       {4, 1} -> (-2*coordinates[[2]]*angularMomentum*Sin[coordinates[[3]]]^2)/(coordinates[[2]]^2 + 
          (angularMomentum/mass)^2*Cos[coordinates[[3]]]^2)}]], coordinates, True, True] /; Length[coordinates] == 4
MetricTensor[{"Kerr", mass_, angularMomentum_}, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[{{1, 1} -> -(1 - (2*mass*"\[FormalR]")/("\[FormalR]"^2 + (angularMomentum/mass)^2*Cos["\[FormalTheta]"]^2)), 
       {2, 2} -> ("\[FormalR]"^2 + (angularMomentum/mass)^2*Cos["\[FormalTheta]"]^2)/("\[FormalR]"^2 - 2*mass*"\[FormalR]" + (angularMomentum/mass)^2), 
       {3, 3} -> "\[FormalR]"^2 + (angularMomentum/mass)^2*Cos["\[FormalTheta]"]^2, 
       {4, 4} -> ("\[FormalR]"^2 + (angularMomentum/mass)^2 + (2*"\[FormalR]"*(angularMomentum^2/mass)*Sin["\[FormalTheta]"]^2)/
           ("\[FormalR]"^2 + (angularMomentum/mass)^2*Cos["\[FormalTheta]"]^2))*Sin["\[FormalTheta]"]^2, 
       {1, 4} -> (-2*"\[FormalR]"*angularMomentum*Sin["\[FormalTheta]"]^2)/("\[FormalR]"^2 + (angularMomentum/mass)^2*Cos["\[FormalTheta]"]^2), 
       {4, 1} -> (-2*"\[FormalR]"*angularMomentum*Sin["\[FormalTheta]"]^2)/("\[FormalR]"^2 + (angularMomentum/mass)^2*Cos["\[FormalTheta]"]^2)}]], 
    {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, index1, index2] /; BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"Kerr", mass_, angularMomentum_}, coordinates_List, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[
      {{1, 1} -> -(1 - (2*mass*coordinates[[2]])/(coordinates[[2]]^2 + (angularMomentum/mass)^2*
             Cos[coordinates[[3]]]^2)), {2, 2} -> (coordinates[[2]]^2 + (angularMomentum/mass)^2*Cos[coordinates[[3]]]^2)/
         (coordinates[[2]]^2 - 2*mass*coordinates[[2]] + (angularMomentum/mass)^2), 
       {3, 3} -> coordinates[[2]]^2 + (angularMomentum/mass)^2*Cos[coordinates[[3]]]^2, 
       {4, 4} -> (coordinates[[2]]^2 + (angularMomentum/mass)^2 + (2*coordinates[[2]]*(angularMomentum^2/mass)*
            Sin[coordinates[[3]]]^2)/(coordinates[[2]]^2 + (angularMomentum/mass)^2*Cos[coordinates[[3]]]^2))*
         Sin[coordinates[[3]]]^2, {1, 4} -> (-2*coordinates[[2]]*angularMomentum*Sin[coordinates[[3]]]^2)/
         (coordinates[[2]]^2 + (angularMomentum/mass)^2*Cos[coordinates[[3]]]^2), 
       {4, 1} -> (-2*coordinates[[2]]*angularMomentum*Sin[coordinates[[3]]]^2)/(coordinates[[2]]^2 + 
          (angularMomentum/mass)^2*Cos[coordinates[[3]]]^2)}]], coordinates, index1, index2] /; 
   Length[coordinates] == 4 && BooleanQ[index1] && BooleanQ[index2]
MetricTensor["KerrSchild"] := Module[{minkowskiMetric, radialCoordinate, scalarFunction, kerrSchildVector}, 
   minkowskiMetric = DiagonalMatrix[{-1, 1, 1, 1}]; radialCoordinate = 
     Sqrt[-("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2 + "\[FormalX]"^2 + "\[FormalY]"^2 + "\[FormalZ]"^2 + 
        Sqrt[4*"\[FormalCapitalJ]"^2*"\[FormalCapitalM]"^2*"\[FormalZ]"^2 + ("\[FormalCapitalJ]"^2 - ("\[FormalCapitalM]"*"\[FormalX]")^2 - ("\[FormalCapitalM]"*"\[FormalY]")^2 - ("\[FormalCapitalM]"*"\[FormalZ]")^2)^2]/"\[FormalCapitalM]"^2]/
      Sqrt[2]; scalarFunction = (2*"\[FormalCapitalM]"*radialCoordinate^3)/(radialCoordinate^4 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2*"\[FormalZ]"^2); 
    kerrSchildVector = {1, (radialCoordinate*"\[FormalX]" + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")*"\[FormalY]")/(radialCoordinate^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2), 
      (radialCoordinate*"\[FormalY]" - ("\[FormalCapitalJ]"/"\[FormalCapitalM]")*"\[FormalX]")/(radialCoordinate^2 + ("\[FormalCapitalJ]"/"\[FormalCapitalM]")^2), "\[FormalZ]"/radialCoordinate}; 
    MetricTensor[Normal[SparseArray[(#1 -> minkowskiMetric[[First[#1],Last[#1]]] + 
           scalarFunction*kerrSchildVector[[First[#1]]]*kerrSchildVector[[Last[#1]]] & ) /@ Tuples[Range[4], 2]]], 
     {"\[FormalT]", "\[FormalX]", "\[FormalY]", "\[FormalZ]"}, True, True]]
MetricTensor["ReissnerNordstrom"] := MetricTensor[DiagonalMatrix[{-(1 - (2*"\[FormalCapitalM]")/"\[FormalR]" + "\[FormalCapitalQ]"^2/(4*Pi*"\[FormalR]"^2)), 
     1/(1 - (2*"\[FormalCapitalM]")/"\[FormalR]" + "\[FormalCapitalQ]"^2/(4*Pi*"\[FormalR]"^2)), "\[FormalR]"^2, "\[FormalR]"^2*Sin["\[FormalTheta]"]^2}], {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, 
   True, True]
MetricTensor["ReissnerNordstrom", coordinates_List] := 
  MetricTensor[DiagonalMatrix[{-(1 - (2*"\[FormalCapitalM]")/coordinates[[2]] + "\[FormalCapitalQ]"^2/(4*Pi*coordinates[[2]]^2)), 
      1/(1 - (2*"\[FormalCapitalM]")/coordinates[[2]] + "\[FormalCapitalQ]"^2/(4*Pi*coordinates[[2]]^2)), coordinates[[2]]^2, 
      coordinates[[2]]^2*Sin[coordinates[[3]]]^2}], coordinates, True, True] /; Length[coordinates] == 4
MetricTensor["ReissnerNordstrom", index1_, index2_] := 
  MetricTensor[DiagonalMatrix[{-(1 - (2*"\[FormalCapitalM]")/"\[FormalR]" + "\[FormalCapitalQ]"^2/(4*Pi*"\[FormalR]"^2)), 
      1/(1 - (2*"\[FormalCapitalM]")/"\[FormalR]" + "\[FormalCapitalQ]"^2/(4*Pi*"\[FormalR]"^2)), "\[FormalR]"^2, "\[FormalR]"^2*Sin["\[FormalTheta]"]^2}], {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, 
    index1, index2] /; BooleanQ[index1] && BooleanQ[index2]
MetricTensor["ReissnerNordstrom", coordinates_List, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[{-(1 - (2*"\[FormalCapitalM]")/coordinates[[2]] + "\[FormalCapitalQ]"^2/(4*Pi*coordinates[[2]]^2)), 
      1/(1 - (2*"\[FormalCapitalM]")/coordinates[[2]] + "\[FormalCapitalQ]"^2/(4*Pi*coordinates[[2]]^2)), coordinates[[2]]^2, 
      coordinates[[2]]^2*Sin[coordinates[[3]]]^2}], coordinates, index1, index2] /; 
   Length[coordinates] == 4 && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"ReissnerNordstrom", mass_}] := 
  MetricTensor[DiagonalMatrix[{-(1 - (2*mass)/"\[FormalR]" + "\[FormalCapitalQ]"^2/(4*Pi*"\[FormalR]"^2)), 
     1/(1 - (2*mass)/"\[FormalR]" + "\[FormalCapitalQ]"^2/(4*Pi*"\[FormalR]"^2)), "\[FormalR]"^2, "\[FormalR]"^2*Sin["\[FormalTheta]"]^2}], {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, 
   True, True]
MetricTensor[{"ReissnerNordstrom", mass_}, coordinates_List] := 
  MetricTensor[DiagonalMatrix[{-(1 - (2*mass)/coordinates[[2]] + "\[FormalCapitalQ]"^2/(4*Pi*coordinates[[2]]^2)), 
      1/(1 - (2*mass)/coordinates[[2]] + "\[FormalCapitalQ]"^2/(4*Pi*coordinates[[2]]^2)), coordinates[[2]]^2, 
      coordinates[[2]]^2*Sin[coordinates[[3]]]^2}], coordinates, True, True] /; Length[coordinates] == 4
MetricTensor[{"ReissnerNordstrom", mass_}, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[{-(1 - (2*mass)/"\[FormalR]" + "\[FormalCapitalQ]"^2/(4*Pi*"\[FormalR]"^2)), 
      1/(1 - (2*mass)/"\[FormalR]" + "\[FormalCapitalQ]"^2/(4*Pi*"\[FormalR]"^2)), "\[FormalR]"^2, "\[FormalR]"^2*Sin["\[FormalTheta]"]^2}], {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, 
    index1, index2] /; BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"ReissnerNordstrom", mass_}, coordinates_List, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[{-(1 - (2*mass)/coordinates[[2]] + "\[FormalCapitalQ]"^2/(4*Pi*coordinates[[2]]^2)), 
      1/(1 - (2*mass)/coordinates[[2]] + "\[FormalCapitalQ]"^2/(4*Pi*coordinates[[2]]^2)), coordinates[[2]]^2, 
      coordinates[[2]]^2*Sin[coordinates[[3]]]^2}], coordinates, index1, index2] /; 
   Length[coordinates] == 4 && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"ReissnerNordstrom", mass_, charge_}] := 
  MetricTensor[DiagonalMatrix[{-(1 - (2*mass)/"\[FormalR]" + charge^2/(4*Pi*"\[FormalR]"^2)), 
     1/(1 - (2*mass)/"\[FormalR]" + charge^2/(4*Pi*"\[FormalR]"^2)), "\[FormalR]"^2, "\[FormalR]"^2*Sin["\[FormalTheta]"]^2}], {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, 
   True, True]
MetricTensor[{"ReissnerNordstrom", mass_, charge_}, coordinates_List] := 
  MetricTensor[DiagonalMatrix[{-(1 - (2*mass)/coordinates[[2]] + charge^2/(4*Pi*coordinates[[2]]^2)), 
      1/(1 - (2*mass)/coordinates[[2]] + charge^2/(4*Pi*coordinates[[2]]^2)), coordinates[[2]]^2, 
      coordinates[[2]]^2*Sin[coordinates[[3]]]^2}], coordinates, True, True] /; Length[coordinates] == 4
MetricTensor[{"ReissnerNordstrom", mass_, charge_}, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[{-(1 - (2*mass)/"\[FormalR]" + charge^2/(4*Pi*"\[FormalR]"^2)), 
      1/(1 - (2*mass)/"\[FormalR]" + charge^2/(4*Pi*"\[FormalR]"^2)), "\[FormalR]"^2, "\[FormalR]"^2*Sin["\[FormalTheta]"]^2}], {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, 
    index1, index2] /; BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"ReissnerNordstrom", mass_, charge_}, coordinates_List, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[{-(1 - (2*mass)/coordinates[[2]] + charge^2/(4*Pi*coordinates[[2]]^2)), 
      1/(1 - (2*mass)/coordinates[[2]] + charge^2/(4*Pi*coordinates[[2]]^2)), coordinates[[2]]^2, 
      coordinates[[2]]^2*Sin[coordinates[[3]]]^2}], coordinates, index1, index2] /; 
   Length[coordinates] == 4 && BooleanQ[index1] && BooleanQ[index2]
MetricTensor["Godel"] := MetricTensor[Normal[SparseArray[{{1, 1} -> -(1/(2*"\[FormalOmega]"^2)), {2, 2} -> 1/(2*"\[FormalOmega]"^2), 
      {3, 3} -> -(Exp[2*"\[FormalX]"]/(4*"\[FormalOmega]"^2)), {4, 4} -> 1/(2*"\[FormalOmega]"^2), {1, 3} -> -(Exp["\[FormalX]"]/(2*"\[FormalOmega]"^2)), 
      {3, 1} -> -(Exp["\[FormalX]"]/(2*"\[FormalOmega]"^2))}]], {"\[FormalT]", "\[FormalX]", "\[FormalY]", "\[FormalZ]"}, True, True]
MetricTensor["Godel", coordinates_List] := 
  MetricTensor[Normal[SparseArray[{{1, 1} -> -(1/(2*"\[FormalOmega]"^2)), {2, 2} -> 1/(2*"\[FormalOmega]"^2), 
       {3, 3} -> -(Exp[2*coordinates[[2]]]/(4*"\[FormalOmega]"^2)), {4, 4} -> 1/(2*"\[FormalOmega]"^2), 
       {1, 3} -> -(Exp[coordinates[[2]]]/(2*"\[FormalOmega]"^2)), {3, 1} -> -(Exp[coordinates[[2]]]/(2*"\[FormalOmega]"^2))}]], coordinates, 
    True, True] /; Length[coordinates] == 4
MetricTensor["Godel", index1_, index2_] := 
  MetricTensor[Normal[SparseArray[{{1, 1} -> -(1/(2*"\[FormalOmega]"^2)), {2, 2} -> 1/(2*"\[FormalOmega]"^2), 
       {3, 3} -> -(Exp[2*"\[FormalX]"]/(4*"\[FormalOmega]"^2)), {4, 4} -> 1/(2*"\[FormalOmega]"^2), {1, 3} -> -(Exp["\[FormalX]"]/(2*"\[FormalOmega]"^2)), 
       {3, 1} -> -(Exp["\[FormalX]"]/(2*"\[FormalOmega]"^2))}]], {"\[FormalT]", "\[FormalX]", "\[FormalY]", "\[FormalZ]"}, index1, index2] /; 
   BooleanQ[index1] && BooleanQ[index2]
MetricTensor["Godel", coordinates_List, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[{{1, 1} -> -(1/(2*"\[FormalOmega]"^2)), {2, 2} -> 1/(2*"\[FormalOmega]"^2), 
       {3, 3} -> -(Exp[2*coordinates[[2]]]/(4*"\[FormalOmega]"^2)), {4, 4} -> 1/(2*"\[FormalOmega]"^2), 
       {1, 3} -> -(Exp[coordinates[[2]]]/(2*"\[FormalOmega]"^2)), {3, 1} -> -(Exp[coordinates[[2]]]/(2*"\[FormalOmega]"^2))}]], coordinates, 
    index1, index2] /; Length[coordinates] == 4 && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"Godel", angularVelocity_}] := 
  MetricTensor[Normal[SparseArray[{{1, 1} -> -(1/(2*angularVelocity^2)), {2, 2} -> 1/(2*angularVelocity^2), 
      {3, 3} -> -(Exp[2*"\[FormalX]"]/(4*angularVelocity^2)), {4, 4} -> 1/(2*angularVelocity^2), 
      {1, 3} -> -(Exp["\[FormalX]"]/(2*angularVelocity^2)), {3, 1} -> -(Exp["\[FormalX]"]/(2*angularVelocity^2))}]], 
   {"\[FormalT]", "\[FormalX]", "\[FormalY]", "\[FormalZ]"}, True, True]
MetricTensor[{"Godel", angularVelocity_}, coordinates_List] := 
  MetricTensor[Normal[SparseArray[{{1, 1} -> -(1/(2*angularVelocity^2)), {2, 2} -> 1/(2*angularVelocity^2), 
       {3, 3} -> -(Exp[2*coordinates[[2]]]/(4*angularVelocity^2)), {4, 4} -> 1/(2*angularVelocity^2), 
       {1, 3} -> -(Exp[coordinates[[2]]]/(2*angularVelocity^2)), 
       {3, 1} -> -(Exp[coordinates[[2]]]/(2*angularVelocity^2))}]], coordinates, True, True] /; Length[coordinates] == 4
MetricTensor[{"Godel", angularVelocity_}, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[{{1, 1} -> -(1/(2*angularVelocity^2)), {2, 2} -> 1/(2*angularVelocity^2), 
       {3, 3} -> -(Exp[2*"\[FormalX]"]/(4*angularVelocity^2)), {4, 4} -> 1/(2*angularVelocity^2), 
       {1, 3} -> -(Exp["\[FormalX]"]/(2*angularVelocity^2)), {3, 1} -> -(Exp["\[FormalX]"]/(2*angularVelocity^2))}]], 
    {"\[FormalT]", "\[FormalX]", "\[FormalY]", "\[FormalZ]"}, index1, index2] /; BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"Godel", angularVelocity_}, coordinates_List, index1_, index2_] := 
  MetricTensor[Normal[SparseArray[{{1, 1} -> -(1/(2*angularVelocity^2)), {2, 2} -> 1/(2*angularVelocity^2), 
       {3, 3} -> -(Exp[2*coordinates[[2]]]/(4*angularVelocity^2)), {4, 4} -> 1/(2*angularVelocity^2), 
       {1, 3} -> -(Exp[coordinates[[2]]]/(2*angularVelocity^2)), 
       {3, 1} -> -(Exp[coordinates[[2]]]/(2*angularVelocity^2))}]], coordinates, index1, index2] /; 
   Length[coordinates] == 4 && BooleanQ[index1] && BooleanQ[index2]
MetricTensor["FLRW"] := MetricTensor[DiagonalMatrix[{-1, "\[FormalA]"["\[FormalT]"]^2/(1 - "\[FormalK]"*"\[FormalR]"^2), "\[FormalA]"["\[FormalT]"]^2*"\[FormalR]"^2, 
     "\[FormalA]"["\[FormalT]"]^2*"\[FormalR]"^2*Sin["\[FormalTheta]"]^2}], {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, True, True]
MetricTensor["FLRW", coordinates_List] := 
  MetricTensor[DiagonalMatrix[{-1, "\[FormalA]"[coordinates[[1]]]^2/(1 - "\[FormalK]"*coordinates[[2]]^2), 
      "\[FormalA]"[coordinates[[1]]]^2*coordinates[[2]]^2, "\[FormalA]"[coordinates[[1]]]^2*coordinates[[2]]^2*
       Sin[coordinates[[3]]]^2}], coordinates, True, True] /; Length[coordinates] == 4
MetricTensor["FLRW", index1_, index2_] := 
  MetricTensor[DiagonalMatrix[{-1, "\[FormalA]"["\[FormalT]"]^2/(1 - "\[FormalK]"*"\[FormalR]"^2), "\[FormalA]"["\[FormalT]"]^2*"\[FormalR]"^2, 
      "\[FormalA]"["\[FormalT]"]^2*"\[FormalR]"^2*Sin["\[FormalTheta]"]^2}], {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, index1, index2] /; 
   BooleanQ[index1] && BooleanQ[index2]
MetricTensor["FLRW", coordinates_List, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[{-1, "\[FormalA]"[coordinates[[1]]]^2/(1 - "\[FormalK]"*coordinates[[2]]^2), 
      "\[FormalA]"[coordinates[[1]]]^2*coordinates[[2]]^2, "\[FormalA]"[coordinates[[1]]]^2*coordinates[[2]]^2*
       Sin[coordinates[[3]]]^2}], coordinates, index1, index2] /; Length[coordinates] == 4 && BooleanQ[index1] && 
    BooleanQ[index2]
MetricTensor[{"FLRW", curvature_}] := MetricTensor[DiagonalMatrix[{-1, "\[FormalA]"["\[FormalT]"]^2/(1 - curvature*"\[FormalR]"^2), 
     "\[FormalA]"["\[FormalT]"]^2*"\[FormalR]"^2, "\[FormalA]"["\[FormalT]"]^2*"\[FormalR]"^2*Sin["\[FormalTheta]"]^2}], {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, True, True]
MetricTensor[{"FLRW", curvature_}, coordinates_List] := 
  MetricTensor[DiagonalMatrix[{-1, "\[FormalA]"[coordinates[[1]]]^2/(1 - curvature*coordinates[[2]]^2), 
      "\[FormalA]"[coordinates[[1]]]^2*coordinates[[2]]^2, "\[FormalA]"[coordinates[[1]]]^2*coordinates[[2]]^2*
       Sin[coordinates[[3]]]^2}], coordinates, True, True] /; Length[coordinates] == 4
MetricTensor[{"FLRW", curvature_}, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[{-1, "\[FormalA]"["\[FormalT]"]^2/(1 - curvature*"\[FormalR]"^2), "\[FormalA]"["\[FormalT]"]^2*"\[FormalR]"^2, 
      "\[FormalA]"["\[FormalT]"]^2*"\[FormalR]"^2*Sin["\[FormalTheta]"]^2}], {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, index1, index2] /; 
   BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"FLRW", curvature_}, coordinates_List, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[{-1, "\[FormalA]"[coordinates[[1]]]^2/(1 - curvature*coordinates[[2]]^2), 
      "\[FormalA]"[coordinates[[1]]]^2*coordinates[[2]]^2, "\[FormalA]"[coordinates[[1]]]^2*coordinates[[2]]^2*
       Sin[coordinates[[3]]]^2}], coordinates, index1, index2] /; Length[coordinates] == 4 && BooleanQ[index1] && 
    BooleanQ[index2]
MetricTensor[{"FLRW", curvature_, scaleFactor_}] := 
  MetricTensor[DiagonalMatrix[{-1, scaleFactor["\[FormalT]"]^2/(1 - curvature*"\[FormalR]"^2), scaleFactor["\[FormalT]"]^2*"\[FormalR]"^2, 
     scaleFactor["\[FormalT]"]^2*"\[FormalR]"^2*Sin["\[FormalTheta]"]^2}], {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, True, True]
MetricTensor[{"FLRW", curvature_, scaleFactor_}, coordinates_List] := 
  MetricTensor[DiagonalMatrix[{-1, scaleFactor[coordinates[[1]]]^2/(1 - curvature*coordinates[[2]]^2), 
      scaleFactor[coordinates[[1]]]^2*coordinates[[2]]^2, scaleFactor[coordinates[[1]]]^2*coordinates[[2]]^2*
       Sin[coordinates[[3]]]^2}], coordinates, True, True] /; Length[coordinates] == 4
MetricTensor[{"FLRW", curvature_, scaleFactor_}, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[{-1, scaleFactor["\[FormalT]"]^2/(1 - curvature*"\[FormalR]"^2), scaleFactor["\[FormalT]"]^2*"\[FormalR]"^2, 
      scaleFactor["\[FormalT]"]^2*"\[FormalR]"^2*Sin["\[FormalTheta]"]^2}], {"\[FormalT]", "\[FormalR]", "\[FormalTheta]", "\[FormalPhi]"}, index1, index2] /; 
   BooleanQ[index1] && BooleanQ[index2]
MetricTensor[{"FLRW", curvature_, scaleFactor_}, coordinates_List, index1_, index2_] := 
  MetricTensor[DiagonalMatrix[{-1, scaleFactor[coordinates[[1]]]^2/(1 - curvature*coordinates[[2]]^2), 
      scaleFactor[coordinates[[1]]]^2*coordinates[[2]]^2, scaleFactor[coordinates[[1]]]^2*coordinates[[2]]^2*
       Sin[coordinates[[3]]]^2}], coordinates, index1, index2] /; Length[coordinates] == 4 && BooleanQ[index1] && 
    BooleanQ[index2]
MetricTensor[matrixRepresentation_List] := MetricTensor[matrixRepresentation, (Superscript["\[FormalX]", ToString[#1]] & ) /@ 
     Range[Length[matrixRepresentation]], True, True] /; Length[Dimensions[matrixRepresentation]] == 2
MetricTensor[matrixRepresentation_List, coordinates_List] := 
  MetricTensor[matrixRepresentation, coordinates, True, True] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation]
MetricTensor[matrixRepresentation_List, index1_, index2_] := 
  MetricTensor[matrixRepresentation, (Superscript["\[FormalX]", ToString[#1]] & ) /@ Range[Length[matrixRepresentation]], 
    index1, index2] /; Length[Dimensions[matrixRepresentation]] == 2 && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["MatrixRepresentation"] := 
  If[index1 === True && index2 === True, matrixRepresentation, If[index1 === False && index2 === False, 
     Inverse[matrixRepresentation], If[index1 === True && index2 === False, 
      Normal[SparseArray[(Module[{index = #1}, index -> Total[(matrixRepresentation[[First[index],#1]]*
                Inverse[matrixRepresentation][[#1,Last[index]]] & ) /@ Range[Length[matrixRepresentation]]]] & ) /@ 
         Tuples[Range[Length[matrixRepresentation]], 2]]], If[index1 === False && index2 === True, 
       Normal[SparseArray[(Module[{index = #1}, index -> Total[(Inverse[matrixRepresentation][[First[index],#1]]*
                 matrixRepresentation[[#1,Last[index]]] & ) /@ Range[Length[matrixRepresentation]]]] & ) /@ 
          Tuples[Range[Length[matrixRepresentation]], 2]]], Indeterminate]]]] /; 
   Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
    BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["ReducedMatrixRepresentation"] := 
  If[index1 === True && index2 === True, FullSimplify[matrixRepresentation], If[index1 === False && index2 === False, 
     FullSimplify[Inverse[matrixRepresentation]], If[index1 === True && index2 === False, 
      FullSimplify[Normal[SparseArray[(Module[{index = #1}, index -> Total[(matrixRepresentation[[First[index],#1]]*
                 Inverse[matrixRepresentation][[#1,Last[index]]] & ) /@ Range[Length[matrixRepresentation]]]] & ) /@ 
          Tuples[Range[Length[matrixRepresentation]], 2]]]], If[index1 === False && index2 === True, 
       FullSimplify[Normal[SparseArray[(Module[{index = #1}, index -> Total[(Inverse[matrixRepresentation][[First[index],
                   #1]]*matrixRepresentation[[#1,Last[index]]] & ) /@ Range[Length[matrixRepresentation]]]] & ) /@ 
           Tuples[Range[Length[matrixRepresentation]], 2]]]], Indeterminate]]]] /; 
   Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
    BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["Coordinates"] := 
  coordinates /; Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
    BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["CoordinateOneForms"] := 
  (If[Head[#1] === Subscript, Subscript[StringJoin["\[FormalD]", ToString[First[#1]]], ToString[Last[#1]]], 
      If[Head[#1] === Superscript, Superscript[StringJoin["\[FormalD]", ToString[First[#1]]], ToString[Last[#1]]], 
       StringJoin["\[FormalD]", ToString[#1]]]] & ) /@ coordinates /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["Indices"] := 
  {index1, index2} /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["CovariantQ"] := 
  If[index1 === True && index2 === True, True, False] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["ContravariantQ"] := 
  If[index1 === False && index2 === False, True, False] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["MixedQ"] := 
  If[(index1 === True && index2 === False) || (index1 === False && index2 === True), True, False] /; 
   Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
    BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["Symbol"] := 
  If[index1 === True && index2 === True, Subscript["\[FormalG]", "\[FormalMu]\[FormalNu]"], If[index1 === False && index2 === False, 
     Superscript["\[FormalG]", "\[FormalMu]\[FormalNu]"], If[index1 === True && index2 === False, Subsuperscript["\[FormalG]", "\[FormalMu]", "\[FormalNu]"], 
      If[index1 === False && index2 === True, Subsuperscript["\[FormalG]", "\[FormalNu]", "\[FormalMu]"], Indeterminate]]]] /; 
   Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
    BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["Dimensions"] := 
  Length[matrixRepresentation] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["SymmetricQ"] := 
  SymmetricMatrixQ[matrixRepresentation] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["DiagonalQ"] := 
  DiagonalMatrixQ[matrixRepresentation] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["Signature"] := 
  Module[{eigenvalues, positiveEigenvalues, negativeEigenvalues}, eigenvalues = Eigenvalues[matrixRepresentation]; 
     positiveEigenvalues = Select[eigenvalues, #1 > 0 & ]; negativeEigenvalues = Select[eigenvalues, #1 < 0 & ]; 
     If[Length[positiveEigenvalues] + Length[negativeEigenvalues] == Length[matrixRepresentation], 
      Join[ConstantArray[-1, Length[negativeEigenvalues]], ConstantArray[1, Length[positiveEigenvalues]]], 
      Indeterminate]] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["RiemannianQ"] := 
  Module[{eigenvalues, positiveEigenvalues, negativeEigenvalues}, eigenvalues = Eigenvalues[matrixRepresentation]; 
     positiveEigenvalues = Select[eigenvalues, #1 > 0 & ]; negativeEigenvalues = Select[eigenvalues, #1 < 0 & ]; 
     If[Length[positiveEigenvalues] + Length[negativeEigenvalues] == Length[matrixRepresentation], 
      If[Length[positiveEigenvalues] == Length[matrixRepresentation] || Length[negativeEigenvalues] == 
         Length[matrixRepresentation], True, False], Indeterminate]] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["PseudoRiemannianQ"] := 
  Module[{eigenvalues, positiveEigenvalues, negativeEigenvalues}, eigenvalues = Eigenvalues[matrixRepresentation]; 
     positiveEigenvalues = Select[eigenvalues, #1 > 0 & ]; negativeEigenvalues = Select[eigenvalues, #1 < 0 & ]; 
     If[Length[positiveEigenvalues] + Length[negativeEigenvalues] == Length[matrixRepresentation], 
      If[Length[positiveEigenvalues] == Length[matrixRepresentation] || Length[negativeEigenvalues] == 
         Length[matrixRepresentation], False, True], Indeterminate]] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["LorentzianQ"] := 
  Module[{eigenvalues, positiveEigenvalues, negativeEigenvalues}, eigenvalues = Eigenvalues[matrixRepresentation]; 
     positiveEigenvalues = Select[eigenvalues, #1 > 0 & ]; negativeEigenvalues = Select[eigenvalues, #1 < 0 & ]; 
     If[Length[positiveEigenvalues] + Length[negativeEigenvalues] == Length[matrixRepresentation], 
      If[Length[positiveEigenvalues] == 1 || Length[negativeEigenvalues] == 1, True, False], Indeterminate]] /; 
   Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
    BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["MetricSingularities"] := 
  (Quiet[DeleteDuplicates[Catenate[
       (If[Head[Solve[#1, coordinates /. (#1 -> ToExpression[#1] & ) /@ Select[coordinates, StringQ]]] === Solve, {{#1}}, 
          Solve[#1, coordinates /. (#1 -> ToExpression[#1] & ) /@ Select[coordinates, StringQ]]] & ) /@ 
        Flatten[{FunctionSingularities[Catenate[FullSimplify[matrixRepresentation] /. (#1 -> ToExpression[#1] & ) /@ 
               Select[coordinates, StringQ]], coordinates /. (#1 -> ToExpression[#1] & ) /@ Select[coordinates, 
               StringQ]] /. Or -> List}]]]] /. (ToExpression[#1] -> #1 & ) /@ Select[coordinates, StringQ]) /; 
   Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
    BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["Determinant"] := 
  Det[matrixRepresentation] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["ReducedDeterminant"] := 
  FullSimplify[Det[matrixRepresentation]] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["Trace"] := 
  Total[(Inverse[matrixRepresentation][[First[#1],Last[#1]]]*matrixRepresentation[[First[#1],Last[#1]]] & ) /@ 
     Tuples[Range[Length[matrixRepresentation]], 2]] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["ReducedTrace"] := 
  FullSimplify[Total[(Inverse[matrixRepresentation][[First[#1],Last[#1]]]*matrixRepresentation[[First[#1],
         Last[#1]]] & ) /@ Tuples[Range[Length[matrixRepresentation]], 2]]] /; 
   Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
    BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["Eigenvalues"] := 
  Eigenvalues[matrixRepresentation] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["ReducedEigenvalues"] := 
  FullSimplify[Eigenvalues[matrixRepresentation]] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["Eigenvectors"] := 
  Eigenvectors[matrixRepresentation] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["ReducedEigenvectors"] := 
  FullSimplify[Eigenvectors[matrixRepresentation]] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["MetricTensor"] := 
  MetricTensor[matrixRepresentation, coordinates, True, True] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["InverseMetricTensor"] := 
  MetricTensor[matrixRepresentation, coordinates, False, False] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["LineElement"] := 
  Module[{coordinateOneForms}, 
    coordinateOneForms = (If[Head[#1] === Subscript, Subscript[StringJoin["\[FormalD]", ToString[First[#1]]], 
          ToString[Last[#1]]], If[Head[#1] === Superscript, Superscript[StringJoin["\[FormalD]", ToString[First[#1]]], 
           ToString[Last[#1]]], StringJoin["\[FormalD]", ToString[#1]]]] & ) /@ coordinates; 
     "\[FormalD]\[FormalS]"^2 == Total[(matrixRepresentation[[First[#1],Last[#1]]]*coordinateOneForms[[First[#1]]]*
          coordinateOneForms[[Last[#1]]] & ) /@ Tuples[Range[Length[matrixRepresentation]], 2]]] /; 
   Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
    BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["ReducedLineElement"] := 
  Module[{coordinateOneForms}, 
    coordinateOneForms = (If[Head[#1] === Subscript, Subscript[StringJoin["\[FormalD]", ToString[First[#1]]], 
          ToString[Last[#1]]], If[Head[#1] === Superscript, Superscript[StringJoin["\[FormalD]", ToString[First[#1]]], 
           ToString[Last[#1]]], StringJoin["\[FormalD]", ToString[#1]]]] & ) /@ coordinates; 
     FullSimplify["\[FormalD]\[FormalS]"^2 == Total[(matrixRepresentation[[First[#1],Last[#1]]]*coordinateOneForms[[First[#1]]]*
           coordinateOneForms[[Last[#1]]] & ) /@ Tuples[Range[Length[matrixRepresentation]], 2]]]] /; 
   Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
    BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["VolumeForm"] := 
  Module[{coordinateOneForms}, 
    coordinateOneForms = (If[Head[#1] === Subscript, Subscript[StringJoin["\[FormalD]", ToString[First[#1]]], 
          ToString[Last[#1]]], If[Head[#1] === Superscript, Superscript[StringJoin["\[FormalD]", ToString[First[#1]]], 
           ToString[Last[#1]]], StringJoin["\[FormalD]", ToString[#1]]]] & ) /@ coordinates; 
     "\[FormalD]\[FormalCapitalV]" == \[PlusMinus](Sqrt[Abs[Det[matrixRepresentation]]]*Wedge @@ coordinateOneForms)] /; 
   Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
    BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["ReducedVolumeForm"] := 
  Module[{coordinateOneForms}, 
    coordinateOneForms = (If[Head[#1] === Subscript, Subscript[StringJoin["\[FormalD]", ToString[First[#1]]], 
          ToString[Last[#1]]], If[Head[#1] === Superscript, Superscript[StringJoin["\[FormalD]", ToString[First[#1]]], 
           ToString[Last[#1]]], StringJoin["\[FormalD]", ToString[#1]]]] & ) /@ coordinates; 
     FullSimplify["\[FormalD]\[FormalCapitalV]" == \[PlusMinus](Sqrt[Abs[Det[matrixRepresentation]]]*Wedge @@ coordinateOneForms)]] /; 
   Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
    BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["TimelikeQ"] := 
  ToExpression[StringJoin[ToString[Total[(If[matrixRepresentation[[First[#1],Last[#1]]] === 0, 0, 
          StringJoin[ToString[matrixRepresentation[[First[#1],Last[#1]]], InputForm], " * #[[", 
           ToString[First[#1], InputForm], "]] * #[[", ToString[Last[#1], InputForm], "]]"]] & ) /@ 
        Tuples[Range[Length[matrixRepresentation]], 2]]], " < 0 &"]] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["LightlikeQ"] := 
  ToExpression[StringJoin[ToString[Total[(If[matrixRepresentation[[First[#1],Last[#1]]] === 0, 0, 
          StringJoin[ToString[matrixRepresentation[[First[#1],Last[#1]]], InputForm], " * #[[", 
           ToString[First[#1], InputForm], "]] * #[[", ToString[Last[#1], InputForm], "]]"]] & ) /@ 
        Tuples[Range[Length[matrixRepresentation]], 2]]], " == 0 &"]] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["SpacelikeQ"] := 
  ToExpression[StringJoin[ToString[Total[(If[matrixRepresentation[[First[#1],Last[#1]]] === 0, 0, 
          StringJoin[ToString[matrixRepresentation[[First[#1],Last[#1]]], InputForm], " * #[[", 
           ToString[First[#1], InputForm], "]] * #[[", ToString[Last[#1], InputForm], "]]"]] & ) /@ 
        Tuples[Range[Length[matrixRepresentation]], 2]]], " > 0 &"]] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["LengthPureFunction"] := 
  ToExpression[StringJoin["Sqrt[", ToString[Total[(If[matrixRepresentation[[First[#1],Last[#1]]] === 0, 0, 
          StringJoin[ToString[matrixRepresentation[[First[#1],Last[#1]]], InputForm], " * #[[", 
           ToString[First[#1], InputForm], "]] * #[[", ToString[Last[#1], InputForm], "]]"]] & ) /@ 
        Tuples[Range[Length[matrixRepresentation]], 2]]], "] &"]] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["AnglePureFunction"] := 
  ToExpression[StringJoin["ArcCos[(", 
     ToString[Total[(If[matrixRepresentation[[First[#1],Last[#1]]] === 0, 0, 
          StringJoin[ToString[matrixRepresentation[[First[#1],Last[#1]]], InputForm], " * #1[[", 
           ToString[First[#1], InputForm], "]] * #2[[", ToString[Last[#1], InputForm], "]]"]] & ) /@ 
        Tuples[Range[Length[matrixRepresentation]], 2]]], ") * 1 / (Sqrt[Abs[", 
     ToString[Total[(If[matrixRepresentation[[First[#1],Last[#1]]] === 0, 0, 
          StringJoin[ToString[matrixRepresentation[[First[#1],Last[#1]]], InputForm], " * #1[[", 
           ToString[First[#1], InputForm], "]] * #1[[", ToString[Last[#1], InputForm], "]]"]] & ) /@ 
        Tuples[Range[Length[matrixRepresentation]], 2]]], "] * Abs[", 
     ToString[Total[(If[matrixRepresentation[[First[#1],Last[#1]]] === 0, 0, 
          StringJoin[ToString[matrixRepresentation[[First[#1],Last[#1]]], InputForm], " * #2[[", 
           ToString[First[#1], InputForm], "]] * #2[[", ToString[Last[#1], InputForm], "]]"]] & ) /@ 
        Tuples[Range[Length[matrixRepresentation]], 2]]], "]])] &"]] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_]["Properties"] := 
  {"MatrixRepresentation", "ReducedMatrixRepresentation", "Coordinates", "CoordinateOneForms", "Indices", "CovariantQ", 
    "ContravariantQ", "MixedQ", "Symbol", "Dimensions", "SymmetricQ", "DiagonalQ", "Signature", "RiemannianQ", 
    "PseudoRiemannianQ", "LorentzianQ", "MetricSingularities", "Determinant", "ReducedDeterminant", "Trace", 
    "ReducedTrace", "Eigenvalues", "ReducedEigenvalues", "Eigenvectors", "ReducedEigenvectors", "MetricTensor", 
    "InverseMetricTensor", "LineElement", "ReducedLineElement", "VolumeForm", "ReducedVolumeForm", "TimelikeQ", 
    "LightlikeQ", "SpacelikeQ", "LengthPureFunction", "AnglePureFunction", "Properties"} /; 
   Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
    BooleanQ[index1] && BooleanQ[index2]
MetricTensor[MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_], newCoordinates_List] := 
  MetricTensor[matrixRepresentation /. Thread[coordinates -> newCoordinates], newCoordinates, index1, index2] /; 
   Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
    Length[newCoordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2]
MetricTensor[MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_], newIndex1_, newIndex2_] := 
  MetricTensor[matrixRepresentation, coordinates, newIndex1, newIndex2] /; 
   Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
    BooleanQ[index1] && BooleanQ[index2] && BooleanQ[newIndex1] && BooleanQ[newIndex2]
MetricTensor[MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_], newCoordinates_List, 
   newIndex1_, newIndex2_] := MetricTensor[matrixRepresentation /. Thread[coordinates -> newCoordinates], newCoordinates, 
    newIndex1, newIndex2] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && Length[newCoordinates] == Length[matrixRepresentation] && 
    BooleanQ[index1] && BooleanQ[index2] && BooleanQ[newIndex1] && BooleanQ[newIndex2]
MetricTensor /: MakeBoxes[metricTensor:MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_], 
    format_] := Module[{matrixForm, type, symbol, dimensions, eigenvalues, positiveEigenvalues, negativeEigenvalues, 
      signature, symmetric, icon}, If[index1 === True && index2 === True, matrixForm = matrixRepresentation; 
        type = "Covariant"; symbol = Subscript["\[FormalG]", "\[FormalMu]\[FormalNu]"], If[index1 === False && index2 === False, 
        matrixForm = Inverse[matrixRepresentation]; type = "Contravariant"; symbol = Superscript["\[FormalG]", "\[FormalMu]\[FormalNu]"], 
        If[index1 === True && index2 === False, 
         matrixForm = Normal[SparseArray[(Module[{index = #1}, index -> Total[(matrixRepresentation[[First[index],#1]]*
                     Inverse[matrixRepresentation][[#1,Last[index]]] & ) /@ Range[Length[matrixRepresentation]]]] & ) /@ 
              Tuples[Range[Length[matrixRepresentation]], 2]]]; type = "Mixed"; 
          symbol = Subsuperscript["\[FormalG]", "\[FormalMu]", "\[FormalNu]"], If[index1 === False && index2 === True, 
          matrixForm = Normal[SparseArray[(Module[{index = #1}, index -> Total[(Inverse[matrixRepresentation][[
                       First[index],#1]]*matrixRepresentation[[#1,Last[index]]] & ) /@ Range[Length[
                      matrixRepresentation]]]] & ) /@ Tuples[Range[Length[matrixRepresentation]], 2]]]; type = "Mixed"; 
           symbol = Subsuperscript["\[FormalG]", "\[FormalNu]", "\[FormalMu]"], matrixForm = ConstantArray[Indeterminate, 
             {Length[matrixRepresentation], Length[matrixRepresentation]}]; type = Indeterminate; 
           symbol = Indeterminate]]]]; dimensions = Length[matrixRepresentation]; 
      eigenvalues = Eigenvalues[matrixRepresentation]; positiveEigenvalues = Select[eigenvalues, #1 > 0 & ]; 
      negativeEigenvalues = Select[eigenvalues, #1 < 0 & ]; 
      If[Length[positiveEigenvalues] + Length[negativeEigenvalues] == Length[matrixRepresentation], 
       If[Length[positiveEigenvalues] == Length[matrixRepresentation] || Length[negativeEigenvalues] == 
          Length[matrixRepresentation], signature = "Riemannian", If[Length[positiveEigenvalues] == 1 || 
          Length[negativeEigenvalues] == 1, signature = "Lorentzian", signature = "Pseudo-Riemannian"]], 
       signature = Indeterminate]; symmetric = SymmetricMatrixQ[matrixRepresentation]; 
      icon = MatrixPlot[matrixForm, ImageSize -> Dynamic[{Automatic, 3.5*(CurrentValue["FontCapHeight"]/
             AbsoluteCurrentValue[Magnification])}], Frame -> False, FrameTicks -> None]; 
      BoxForm`ArrangeSummaryBox["MetricTensor", metricTensor, icon, {{BoxForm`SummaryItem[{"Type: ", type}], 
         BoxForm`SummaryItem[{"Symbol: ", symbol}]}, {BoxForm`SummaryItem[{"Dimensions: ", dimensions}], 
         BoxForm`SummaryItem[{"Signature: ", signature}]}}, {{BoxForm`SummaryItem[{"Coordinates: ", coordinates}], 
         BoxForm`SummaryItem[{"Symmetric: ", symmetric}]}}, format, "Interpretable" -> Automatic]] /; 
    Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
     BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_][vector_List] := 
  Sqrt[Total[(matrixRepresentation[[First[#1],Last[#1]]]*vector[[First[#1]]]*vector[[Last[#1]]] & ) /@ 
      Tuples[Range[Length[matrixRepresentation]], 2]]] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2] && 
    Length[vector] == Length[matrixRepresentation]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_][region_Wedge] := 
  \[PlusMinus](Sqrt[Abs[Det[matrixRepresentation]]]*Times @@ region) /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2] && 
    Length[region] == Length[matrixRepresentation]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_][vector1_List, vector2_List] := 
  ArcCos[Total[(matrixRepresentation[[First[#1],Last[#1]]]*vector1[[First[#1]]]*vector2[[Last[#1]]] & ) /@ 
       Tuples[Range[Length[matrixRepresentation]], 2]]/
     Sqrt[Abs[Total[(matrixRepresentation[[First[#1],Last[#1]]]*vector1[[First[#1]]]*vector1[[Last[#1]]] & ) /@ 
          Tuples[Range[Length[matrixRepresentation]], 2]]]*
       Abs[Total[(matrixRepresentation[[First[#1],Last[#1]]]*vector2[[First[#1]]]*vector2[[Last[#1]]] & ) /@ 
          Tuples[Range[Length[matrixRepresentation]], 2]]]]] /; Length[Dimensions[matrixRepresentation]] == 2 && 
    Length[coordinates] == Length[matrixRepresentation] && BooleanQ[index1] && BooleanQ[index2] && 
    Length[vector1] == Length[matrixRepresentation] && Length[vector2] == Length[matrixRepresentation]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_][row_Integer, column_Integer] := 
  If[index1 === True && index2 === True, matrixRepresentation[[row,column]], If[index1 === False && index2 === False, 
     Inverse[matrixRepresentation][[row,column]], If[index1 === True && index2 === False, 
      Normal[SparseArray[(Module[{index = #1}, index -> Total[(matrixRepresentation[[First[index],#1]]*
                 Inverse[matrixRepresentation][[#1,Last[index]]] & ) /@ Range[Length[matrixRepresentation]]]] & ) /@ 
          Tuples[Range[Length[matrixRepresentation]], 2]]][[row,column]], If[index1 === False && index2 === True, 
       Normal[SparseArray[(Module[{index = #1}, index -> Total[(Inverse[matrixRepresentation][[First[index],#1]]*
                  matrixRepresentation[[#1,Last[index]]] & ) /@ Range[Length[matrixRepresentation]]]] & ) /@ 
           Tuples[Range[Length[matrixRepresentation]], 2]]][[row,column]], Indeterminate]]]] /; 
   Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
    BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_][row_Integer, All] := 
  If[index1 === True && index2 === True, matrixRepresentation[[row]], If[index1 === False && index2 === False, 
     Inverse[matrixRepresentation][[row]], If[index1 === True && index2 === False, 
      Normal[SparseArray[(Module[{index = #1}, index -> Total[(matrixRepresentation[[First[[index]],#1]]*
                 Inverse[matrixRepresentation][[#1,Last[index]]] & ) /@ Range[Length[matrixRepresentation]]]] & ) /@ 
          Tuples[Range[Length[matrixRepresentation]], 2]]][[row]], If[index1 === False && index2 == True, 
       Normal[SparseArray[(Module[{index = #1}, index -> Total[(Inverse[matrixRepresentation][[First[index],#1]]*
                  matrixRepresentation[[#1,Last[index]]] & ) /@ Range[Length[matrixRepresentation]]]] & ) /@ 
           Tuples[Range[Length[matrixRepresentation]], 2]]][[row]], Indeterminate]]]] /; 
   Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
    BooleanQ[index1] && BooleanQ[index2]
MetricTensor[matrixRepresentation_List, coordinates_List, index1_, index2_][All, column_Integer] := 
  If[index1 === True && index2 === True, Transpose[{matrixRepresentation[[All,column]]}], 
    If[index1 === False && index2 === False, Transpose[{Inverse[matrixRepresentation][[All,column]]}], 
     If[index1 === True && index2 === False, 
      Transpose[{Normal[SparseArray[(Module[{index = #1}, index -> Total[(matrixRepresentation[[First[[index]],#1]]*
                   Inverse[matrixRepresentation][[#1,Last[index]]] & ) /@ Range[Length[matrixRepresentation]]]] & ) /@ 
            Tuples[Range[Length[matrixRepresentation]], 2]]][[All,column]]}], If[index1 === False && index2 === True, 
       Transpose[{Normal[SparseArray[(Module[{index = #1}, index -> Total[(Inverse[matrixRepresentation][[First[index],
                     #1]]*matrixRepresentation[[#1,Last[index]]] & ) /@ Range[Length[matrixRepresentation]]]] & ) /@ 
             Tuples[Range[Length[matrixRepresentation]], 2]]][[All,column]]}], Indeterminate]]]] /; 
   Length[Dimensions[matrixRepresentation]] == 2 && Length[coordinates] == Length[matrixRepresentation] && 
    BooleanQ[index1] && BooleanQ[index2]