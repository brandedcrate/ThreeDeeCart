=begin
Represents the 3D Cart shipping information object
=end
module ThreeDeeCart
  class ShippingInformation < ThreeDeeCart::Root
    attr_accessor :shipping
    attr_accessor :shipment_id
    attr_accessor :shipment_date
    attr_accessor :method
    attr_accessor :status
    attr_accessor :weight
    attr_accessor :tracking_code
    attr_accessor :internal_comment
    attr_accessor :first_name
    attr_accessor :last_name
    attr_accessor :address
    attr_accessor :address2
    attr_accessor :city
    attr_accessor :state_code
    attr_accessor :zip_code
    attr_accessor :country_code
    attr_accessor :company
    attr_accessor :phone
  end
end