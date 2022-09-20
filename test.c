#include <lua.h>
#include <lauxlib.h>

lua_Number add(lua_Number a, lua_Number b) {
	return a + b;
}

static int test(lua_State *L) {
	luaL_checktype(L, 1, LUA_TNUMBER);
	luaL_checktype(L, 2, LUA_TNUMBER);
	lua_Number a = lua_tonumber(L, 1);
	lua_Number b = lua_tonumber(L, 2);
	lua_pushnumber(L, add(a, b));
	return 1;
}

static const struct luaL_Reg funcs[] = {
	{"test", test},
	{NULL, NULL}
};

int LUA_API luaopen_libtest(lua_State *L) {
	luaL_openlib(L, "libtest", funcs, 0);
	return 1;
}
