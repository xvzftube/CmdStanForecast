data {
  int<lower=1> n;
  vector<lower=0>[n] y;
  real scale;
  real location;
}
parameters {
  real<lower=0> sigma;
}
transformed parameters {
  vector[n] y_log;
  y_log = log(y);
}
model {
  sigma ~ normal(location,scale);
  for (t in 2:n) {
    y_log[t] ~ normal(y_log[t-1], sigma);
  } 
}
generated quantities{
  vector[n] f;
  for (j in 1:n){
  f[j] = exp(normal_rng(3.367, sigma*sqrt(j)));
  }
}
