local test = require("libtest")
print(test.test(1, 2))

local ffi = require("ffi")
ffi.cdef("double add(double a, double b);")

local libprefix = jit.os == "Windows" and "lib" or ""
local libtest = ffi.load(libprefix .. "test")
print(libtest.add(1, 2))
