library(here)

while(1){
  hour <- lubridate::hour(Sys.time())
  mins <- lubridate::minute(Sys.time())
  if(hour == 13){
    
    source(here("code","covid19-chile_01_scrp-data.R"))
    source(here("code","covid19-chile_02_read-data.R"))
    source(here("code","covid19-chile_03_plot-data.R"))
    source(here("code","covid19-chile_04_post-data.R"))
    
  }else{
    Sys.sleep((60-mins)*60)
  }
}