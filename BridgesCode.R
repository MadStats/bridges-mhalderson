AK = read.csv(file = "AK15.txt")
WI = read.csv(file = "WI15.txt")

FilterData = function(x){
  FIPSCode = (x$STATE_CODE_001 * 1000) + (x$COUNTY_CODE_003)
 x=cbind(x$FIPSCode, x$ROUTE_PREFIX_005B, x$YEAR_BUILT_027, x$STRUCTURE_NUMBER_008, x$STRUCTURAL_EVAL_067)
}

AK = FilterData(AK)
WI = FilterData(WI)

