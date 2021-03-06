<?xml version="1.0" encoding="UTF-8"?>
<installer-gui-script minSpecVersion="2">
    <title>NVIDIA Web Driver 387.10.10.10.40.108</title>
    <options customize="never" allow-external-scripts="false" rootVolumeOnly="true"/>
    <background file="background.png" scaling="none" alignment="bottomleft"/>
    <welcome file="Welcome.rtf"/>
    <license file="License.rtf"/>
    <installation-check script="InstallationCheck();"/>
    <script>
		function InstallationCheck() 
		{			
			if (!validateSoftware()) return false;

			return true;
		}
		 
		function compareBuildVersions(si, sj)
		{
			var li, lj;

			li = si.length; lj = sj.length;
			if ((li == 0) || (lj == 0)) return 0;

			if (li &lt; lj)
			{
				if (li == 2) sj = sj.substring(0, 2);
				else if (li == 3) sj = sj.substring(0, 3);
			}
			else
			{
				if (lj == 2) si = si.substring(0, 2);
				else if (lj == 3) si = si.substring(0, 3);
			}

			return system.compareVersions(si, sj);
		}

		function validateSoftware()
		{
			var supportedOSVer = "10.13.6";
   	 		var supportedOSBuildVer = "17G3025";
			var targetBuild = system.version.ProductBuildVersion; 
			var result = compareBuildVersions(targetBuild, supportedOSBuildVer);

			if (result != 0) 
			{
				var title;
				var msg;
				var osVersionString = system.version.ProductVersion;
				
				if ((targetBuild.substring(0, 2) == supportedOSBuildVer.substring(0, 2)) &amp;&amp; (result &lt; 0))
				{
					title = system.localizedString("need_os_update_title");
					msg = system.localizedStringWithFormat("need_os_update_message", supportedOSVer, supportedOSBuildVer);
				}
				else
				{
					title = system.localizedString("visit_website_title");
					msg = system.localizedStringWithFormat("visit_website_message", osVersionString, targetBuild);
				}

				my.result.title = title;
				my.result.message = msg;
				my.result.type = "Fatal";

				return false;
			}

			return true;
		}
	</script>
    <choices-outline>
        <line choice="manual"/>
    </choices-outline>
    <choice id="manual" title="NVIDIA Web Driver 387.10.10.10.40.108" description="NVIDIA driver components">
        <pkg-ref id="NV" auth="Root" onConclusion="RequireRestart">#1.7-97-387.10.10.10.40.108-NVWebDrivers.pkg</pkg-ref>
        <pkg-ref id="NVPrefPane" auth="Root">#NVPrefPane.pkg</pkg-ref>
    </choice>
    <pkg-ref id="NV" packageIdentifier="com.nvidia.web-driver" installKBytes="191441">
        <bundle-version>
            <bundle CFBundleShortVersionString="10.33.0" CFBundleVersion="10.3.3" id="com.nvidia.web.NVDANV50HalTeslaWeb" path="Library/Extensions/NVDANV50HalTeslaWeb.kext"/>
            <bundle CFBundleShortVersionString="10.33.0" CFBundleVersion="10.3.3" id="com.nvidia.web.NVDAResmanTeslaWeb" path="Library/Extensions/NVDAResmanTeslaWeb.kext"/>
            <bundle CFBundleShortVersionString="10.33.0" CFBundleVersion="10.3.3" id="com.nvidia.web.GeForceWeb" path="Library/Extensions/GeForceWeb.kext"/>
            <bundle CFBundleShortVersionString="10.33.0" CFBundleVersion="10.3.3" id="com.nvidia.web.GeForceVADriverWeb" path="System/Library/Extensions/GeForceVADriverWeb.bundle"/>
            <bundle CFBundleShortVersionString="10.33.0" CFBundleVersion="10.3.3" id="com.nvidia.web.GeForceAIRPluginWeb" path="System/Library/Extensions/GeForceAIRPluginWeb.bundle"/>
            <bundle CFBundleShortVersionString="10.33.0" CFBundleVersion="10.3.3" id="com.nvidia.web.NVDAGP100HalWeb" path="Library/Extensions/NVDAGP100HalWeb.kext"/>
            <bundle CFBundleShortVersionString="10.33.0" CFBundleVersion="10.3.3" id="com.nvidia.web.GeForceTeslaGAWeb" path="System/Library/Extensions/GeForceTeslaGAWeb.bundle"/>
            <bundle CFBundleShortVersionString="10.33.0" CFBundleVersion="10.3.3" id="com.nvidia.web.GeForceGLDriverWeb" path="System/Library/Extensions/GeForceGLDriverWeb.bundle"/>
            <bundle CFBundleShortVersionString="10.33.0" CFBundleVersion="10.3.3" id="com.nvidia.web.GeForceTeslaGLDriverWeb" path="System/Library/Extensions/GeForceTeslaGLDriverWeb.bundle"/>
            <bundle CFBundleShortVersionString="10.33.0" CFBundleVersion="10.3.3" id="com.nvidia.web.GeForceTeslaVADriverWeb" path="System/Library/Extensions/GeForceTeslaVADriverWeb.bundle"/>
            <bundle CFBundleShortVersionString="10.33.0" CFBundleVersion="10.3.3" id="com.nvidia.web.NVDAGF100HalWeb" path="Library/Extensions/NVDAGF100HalWeb.kext"/>
            <bundle CFBundleShortVersionString="10.33.0" CFBundleVersion="10.3.3" id="com.nvidia.web.NVDAResmanWeb" path="Library/Extensions/NVDAResmanWeb.kext"/>
            <bundle CFBundleShortVersionString="10.33.0" CFBundleVersion="10.3.3" id="com.nvidia.NVDAStartupWeb" path="Library/Extensions/NVDAStartupWeb.kext"/>
            <bundle CFBundleShortVersionString="10.33.0" CFBundleVersion="10.3.3" id="com.nvidia.web.NVDAGM100HalWeb" path="Library/Extensions/NVDAGM100HalWeb.kext"/>
            <bundle CFBundleShortVersionString="10.33.0" CFBundleVersion="10.3.3" id="com.nvidia.web.GeForceTeslaWeb" path="Library/Extensions/GeForceTeslaWeb.kext"/>
            <bundle CFBundleShortVersionString="10.33.0" CFBundleVersion="10.3.3" id="com.nvidia.web.GeForceMTLDriverWeb" path="System/Library/Extensions/GeForceMTLDriverWeb.bundle"/>
            <bundle CFBundleShortVersionString="10.33.0" CFBundleVersion="10.3.3" id="com.nvidia.web.NVDAGK100HalWeb" path="Library/Extensions/NVDAGK100HalWeb.kext"/>
        </bundle-version>
    </pkg-ref>
    <pkg-ref id="NVPrefPane" packageIdentifier="com.nvidia.nvprefpane" installKBytes="1113">
        <bundle-version>
            <bundle CFBundleShortVersionString="1.7" CFBundleVersion="97" id="com.nvidia.nvprefpane" path="NVIDIA Driver Manager.prefPane"/>
        </bundle-version>
    </pkg-ref>
    <product id="com.nvidia.combo-pkg" version="387.10.10.10.40.108"/>
</installer-gui-script>
