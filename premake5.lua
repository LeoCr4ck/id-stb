-- */modules/stb/premake5.lua

project "stb"
	kind "StaticLib"
	language "C"
	staticruntime "on"

	targetdir ("%{wks.location}/build/bin/" .. outputdir .. "/modules/%{prj.name}")
	objdir ("%{wks.location}/build/obj/" .. outputdir .. "/modules/%{prj.name}")

	files
	{
		"stb.cpp",
		"stb_image.h"
	}
	
	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"