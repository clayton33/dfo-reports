# Overview

This directory contains materials that can be used to prepare **Canadian Technical Report of Hydrography and Ocean Sciences** reports using latex. This is not an official template, but it follows all the guidelines for an English cover with the appropriate  explanatory material. 

Guidelines can be viewed here : https://waves-vagues.dfo-mpo.gc.ca/Library/333125.pdf

Templates for the cover pages, as well as the explanatory material for all reports can be viewed here : http://intra.dfo-mpo.gc.ca/intracom/report/template/index_e.htm

The link provided for the above require those to be on the DFO network. The guidelines, cover page for the Hydrography and Ocean Sciences report and the explanatory material is also located in the documentation/ directory for quick reference. Newer version will be added as available.

# To use

You can either download this directory and make changes to ``myreport.tex``. Or you can copy over a few files into your directory. Required files include:

* ``dforeport.cls``

It is suggested that the user take a look at ``myreport.tex`` as it shows what to include in the preamble and right after you begin your document.

It is also required that the user export the cover page and inside cover page from MS Word to .pdf. To do this, make changes to `coverDocuments/HydroTechCover.doc`, then go to save > export > export as pdf, and save the file as `cover.pdf` in the working directory. The user can either copy over `coverInside.pdf`, which has already been exported from MS Word or export it themselves. Note that having both files are required for compiling the latex document into `.pdf`.
 
