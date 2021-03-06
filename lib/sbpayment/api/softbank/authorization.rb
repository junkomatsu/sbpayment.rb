require_relative '../../request'
require_relative '../../response'

module Sbpayment
  module API
    module Softbank
      class AuthorizationRequest < Request
        tag 'sps-api-request', id: 'ST01-00104-405'
        key :merchant_id, default: -> { Sbpayment.config.merchant_id }
        key :service_id,  default: -> { Sbpayment.config.default_service_id }
        key :tracking_id
        key :cust_code
        key :order_id
        key :item_id
        key :tax
        key :amount
        key :free1
        key :free2
        key :free3
        key :order_rowno
        key :request_date, default: -> { TimeUtil.format_current_time }
        key :limit_second
        key :sps_hashcode
      end

      class AuthorizationResponse < Response
      end
    end
  end
end
