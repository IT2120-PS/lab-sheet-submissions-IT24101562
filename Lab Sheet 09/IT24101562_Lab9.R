setwd("C:\\Users\\ASUS TUF\\OneDrive - Sri Lanka Institute of Information Technology\\sliit\\Modules\\Y2 S1\\PS\\Lab9")
# i. Generate random sample of size 25
baking_time <- rnorm(25, mean = 45, sd = 2)
baking_time

# ii. Test mean < 46 at 5% significance
t_test_result <- t.test(baking_time, mu = 46, alternative = "less")
t_test_result

# Extract values
t_statistic <- t_test_result$statistic
p_value <- t_test_result$p.value
conf_interval <- t_test_result$conf.int

t_statistic
p_value
conf_interval