import qbs

StaticLib {
	name: "libavoid"
	Depends { name: "cpp" }
	cpp.includePaths: [".."]

	Export {
		Depends { name: "cpp" }
		cpp.systemIncludePaths: [".."]
	}

	files: [
		"*.h",
		"*.cpp",
	]
}
