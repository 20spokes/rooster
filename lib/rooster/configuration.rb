class Rooster::Configuration
  attr_accessor :admin_auth

  def initialize
    @admin_auth = 'Rooster::Auth'
  end
end
