Rails.configuration.stripe = {
  :publishable_key => "pk_test_rzGV5ixuX2BtttbCF7L7UqL4",
  :secret_key      => "sk_test_N62386icjaXFg7TJkp4OXM4f"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]