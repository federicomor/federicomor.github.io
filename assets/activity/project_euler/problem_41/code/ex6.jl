# This file was generated, do not modify it. # hide
using BenchmarkTools
pan_no = 123947076
@btime ispandigital_v1(pan_no)
@btime ispandigital_v2(pan_no)
@btime ispandigital_v3(pan_no)
@btime ispandigital_v4(pan_no)