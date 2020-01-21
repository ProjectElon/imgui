project ("ImGui")

    kind ("StaticLib")
    language ("C++")
    cppdialect ("C++17")

    pic ("On")
    systemversion ("latest")
    staticruntime ("On")

    files
    {
        "imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp"
    }

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    filter ("configurations:Debug")
        runtime ("Debug")
        symbols ("on")

    filter ("configurations:Release")
        runtime ("Release")
        optimize ("on")
    
    filter ("configurations:Dist")
        runtime ("Release")
        optimize ("on") 