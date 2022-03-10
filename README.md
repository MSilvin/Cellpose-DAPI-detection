[![CC BY 4.0][cc-by-shield]][cc-by]

This work is licensed by Marine SILVIN, (http://ici.igbmc.fr/) under a
[Creative Commons Attribution 4.0 International License][cc-by].

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-image]: https://i.creativecommons.org/l/by/4.0/88x31.png
[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg


## Table of Contents
1. [Using Cellpose to detect nucleis and then analyse spots in each of them](#Using-Cellpose-to-detect-nucleis-and-then-analyse-spots-in-each-of-them)
2. [Requirements](#Requirements)
3. [Pre-processing of the images](#Pre-processing-of-the-images)
4. [How to install the notebook](#How-to-install-the-notebook)
5. [How to run the notebook](#How-to-run-the-notebook)
6. [Outputs](#Outputs)
7. [More infos](#More-infos)


# Using Cellpose to detect nucleis and then analyse spots in each of them
The goal of this study was to analyse some Leica files (.lif) in order to detect nuclei in 3 channels image. Then, we needed to detect every spots in the nuclei and measure the intensity of each.
For this, I developped a notebook to run cellpose and do all the analysis.

### Requirements
* Leica files (.lif) or directly TIFF images (with spots on channel number 1 and dapi on channel number 3)
* A cellpose environnement
* Fiji


## Pre-processing of the images
As previously said, we worked on Leica files (.lif) and my notebook needs .tif as an input. So it is necessary to convert the files before running the notebook.
For that, I have adapted the macro : https://github.com/MicPhotonIGBMC/ImageJ-Macros/tree/master/Open.lif_Split%26Save to open and convert each files in tif.
So you can use my "ExtractTiffFromLif.ijm" macro in Fiji to have your files ready for the notebook.

## How to install the notebook
```
To be writing
```


## How to run the notebook
When you have installed the notebook, you can run it by clicking on the "run". You can start only on the import part if you have already done the installations on your environnements (if you use environnements).
When running, it will asked you were your tif files are and will only work on __2D TIFF images__. 

## Outputs
This notebook will return a csv files with all the intensity measurement. It will also returns two png files by images. One with the nuclei label and the second one with the dots labels.

## More infos
* The "Bac-a-sable.ipynb" is just a test notebook for me, to run some more experiment because I'm starting with notebook image analysis.
* This repository/study is inspired by:
   * [napari-zelda](https://github.com/RoccoDAnt/napari-zelda)
   * [cellpose](https://github.com/MouseLand/cellpose)
* Development to do: a more adjustable notebook (ask user which channels is DAPI or spots for exemple).... TO BE CONTINUED


