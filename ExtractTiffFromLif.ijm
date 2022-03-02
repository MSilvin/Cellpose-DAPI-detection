/* January 2022
 * Marine SILVIN
 * silvinm@igbmc.fr 
 *  
 *  
 *  
*/ 
macro "Split and Save [F2]" {

// INITIALISE MACRO
print("\\Clear");
               
run("Bio-Formats Macro Extensions");	//enable macro functions for Bio-formats Plugin
print("select folder with your Data")
dir1 = getDirectory("Choose a Directory");
print("Select the Save Folder")
dir2 = getDirectory("Choose a Directory");
list = getFileList(dir1);
setBatchMode(false);
// PROCESS LIF FILES
for (i = 0; i < list.length; i++) {
		processFile(list[i]);
}

/// Requires run("Bio-Formats Macro Extensions");
function processFile(fileToProcess){
	path=dir1+fileToProcess;
	Ext.setId(path);
	Ext.getCurrentFile(fileToProcess);
	Ext.getSeriesCount(seriesCount); // this gets the number of series
	print("Processing the file = " + fileToProcess);
	// see http://imagej.1557.x6.nabble.com/multiple-series-with-bioformats-importer-td5003491.html
	for (j=0; j<seriesCount; j++) {
		Ext.setSeries(j);
        Ext.getSeriesName(seriesName);
		run("Bio-Formats Importer", "open=&path color_mode=Default view=Hyperstack stack_order=XYCZT series_"+j+1); 
		fileNameWithoutExtension = File.nameWithoutExtension;
		saveAs("tiff", dir2+seriesName+".tif");
		run("Close");

			
	}
  }
}