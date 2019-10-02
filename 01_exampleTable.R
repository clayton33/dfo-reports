rm(list = ls())
source('00_subregions.R')

latmin <- unlist(lapply(subregions, function(k) min(k$lat)))
latmax <- unlist(lapply(subregions, function(k) max(k$lat)))
lonmin <- unlist(lapply(subregions, function(k) min(k$lon)))
lonmax <- unlist(lapply(subregions, function(k) max(k$lon)))

srname <- names(subregions)
srnamelongandabbrev <- ifelse(srname == 'gb', 'Georges Bank (GB)',
                              ifelse(srname == 'css', 'Central Scotian Shelf (CSS)',
                                     ifelse(srname == 'ess', 'Eastern Scotian Shelf (ESS)',
                                            ifelse(srname == 'wss', 'Western Scotian Shelf (WSS)',
                                                   ifelse(srname == 'cs', 'Cabot Strait (CS)',
                                                          ifelse(srname == 'ls', 'Lurcher Shoal (LS)', ''))))))

header <- c('Box name', 'Latitude min ($^\\circ$ N)', 'Latitude max ($^\\circ$ N)',
            'Longitude min ($^\\circ$ W)', 'Longitude max ($^\\circ$ W)')
table <- cbind(srnamelongandabbrev, latmin, latmax, abs(lonmin), abs(lonmax))
colnames(table) <- header
align <- c(rep('p{2in}',2), rep('p{.7in}', ncol(table) - 1))
caption <- c('Geographical boundary definitions for the 
            Maritime boxes along the Scotian Shelf.',
             'Geographical boundaries for Maritime boxes')

