Spree::Avatax::Config.configure do |config|
  config.company_code = ENV['AVATAX_COMPANY_CODE']
  config.license_key = ENV['AVATAX_LICENSE_KEY']
  config.account = ENV['AVATAX_ACCOUNT']
  config.environment = ENV['AVATAX_ENVIRONMENT'].presence || (Rails.env.production? ? :production : :sandbox)
  config.log = true
  config.log_to_stdout = false
  config.address_validation = true
  config.address_validation_enabled_countries = ['United States', 'Canada']
  config.tax_calculation = true
  config.document_commit = true
  # The origin MUST be a JSON string. An example is shown below:
  # { line1: '915 S Jackson St', line2: '', city: 'Montgomery', region: 'AL', postalCode: 36104, country: 'US' }.to_json
  config.origin = '{}'
  config.refuse_checkout_address_validation_error = false
  config.customer_can_validate = false
  config.raise_exceptions = false 
end
