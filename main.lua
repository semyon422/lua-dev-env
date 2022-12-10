local test = require("libtest")
print(test.test(1, 2))

local ffi = require("ffi")
ffi.cdef("double add(double a, double b);")

local libtest
if jit.os == "Windows" then
    libtest = ffi.load("libtest")
else
    libtest = ffi.load("test")
end
print(libtest.add(1, 2))
