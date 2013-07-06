
module ThreeDeeCart

  autoload :Config,   'three_dee_cart/config'
  autoload :Base,     'three_dee_cart/base'
  autoload :Customer, 'three_dee_cart/customer'
  autoload :Version,  "three_dee_cart/version"

  @@configuration = nil

  def self.load_configuration(config_file)
    @@configurtion = ThreeDeeCart::Config.load_configuration_from_file(config_file)
  end

  def self.config(&block)
    @@configuration = yield(ThreeDeeCart::Config)
  end

  def self.configuration
    @@configuration
  end

  def client
    @@client ||= Savon.client(wsdl: self.configuration.wsdl)
  end
end
