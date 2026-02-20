#Rcpp tool install Rtools

library(Rcpp)

cppFunction('
double fast_sum(NumericVector x) {
  double total = 0;
  for(int i = 0; i < x.size(); i++) {
    total += x[i];
  }
  return total;
}
')

fast_sum(1:10000000)