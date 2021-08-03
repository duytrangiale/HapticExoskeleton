% Find the Root Mean Squared error of force tracking and max of error
RMSE = rms(force_error);
error_max = max(force_error);
fprintf('The root-mean-squared error of force tracking: %f \n',RMSE);
fprintf('The maximun error: %f \n',error_max);