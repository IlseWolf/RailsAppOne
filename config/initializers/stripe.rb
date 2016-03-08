if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_f77eGkoX8EvFaHhQnnlcxlrK',
    :secret_key => 'sk_test_QdtiT728GiGSQrrMOi2ZjyAJ'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]