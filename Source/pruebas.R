library(ggplot2)

billions_ind <- which(data$CROPDMGEXP == 'B' & data$PROPDMGEXP == 'B')

billions_data <- data[billions_ind, c('EVTYPE', 'PROPDMG', 'CROPDMG')]

print(
   ggplot(billions_data, aes(EVTYPE, PROPDMG + CROPDMG, fill = EVTYPE)) + 
             geom_bar(stat = 'identity') +
      labs(x = 'Event Type', y = 'Total damage in Billions (Crops and Props)')
)