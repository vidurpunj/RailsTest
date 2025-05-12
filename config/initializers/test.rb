Rails.application.configure do
  # Other configurations...

  # To display the emails ids
  config.filter_parameters -= [:email]
end
