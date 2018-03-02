
set PROD;
set MONTH;
set Machine;

param laborhour {PROD,Machine} > 0 ;
param avail {MONTH} > 0 ;
param Demand {PROD,MONTH} > 0 ;
param Price {PROD,MONTH} > 0 ;



var Make {p in PROD, m in MONTH} ;
maximize Profit: sum {p in PROD, m in MONTH} Price[p,m] * Make[p,m] ;


s.t. laborhour[p,m] < = avail[m] ;
s.t. 0 < Make[p,m] < = Demand[p,m] ;