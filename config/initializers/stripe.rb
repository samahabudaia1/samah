if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_N4fV5QyriXBTtU68ck6pvqtw',
    secret_key: 'sk_test_x7FNzwOR6plmapxpxUJ4C92B'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]