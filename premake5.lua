project "stb"
	kind "StaticLib"
	language "C"
	staticruntime "on"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/Engine/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/Engine/%{prj.name}")

	files
	{
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