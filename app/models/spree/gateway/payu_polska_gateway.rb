module Spree
  class Gateway::PayuPolskaGateway < Gateway
    preference :client_id, :string
    preference :merchant_pos_id, :string
    preference :client_secret, :password
    preference :notify_url, :string

    def provider_class
      ActiveMerchant::Billing::PayuPolskaGateway
    end

    def payment_source_class
      Check
    end

    def method_type
      'payu'
    end

    def auto_capture?
      false
    end
  end
end
