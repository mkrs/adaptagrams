import qbs

StaticLib {
	name: "libavoid"
	Depends { name: "cpp" }
	cpp.includePaths: [".."]
	Properties {
		condition: qbs.targetOS.contains("windows")
		cpp.defines: outer.concat(["_AFXDLL","LIBAVOID_NO_DLL","_WINDOWS"])
	}	

	Export {
		Depends { name: "cpp" }
		cpp.includePaths: [".."]
	}

	files: [
		"*.h",
		"*.cpp",
	]
}
