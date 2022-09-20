local test = require("libtest")
print(test.test(1, 2))

local ffi = require("ffi")
ffi.cdef("double add(double a, double b);")
local libtest = ffi.load("test")
print(libtest.add(1, 2))
