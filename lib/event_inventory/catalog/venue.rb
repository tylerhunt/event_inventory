module EventInventory::Catalog
  class Venue < Base
    class Parser
      include ParseHelper

      class Venue
        include ParseHelper

        element :row, :value => :venue_id, :as => :id
        element :row, :value => :venue_name, :as => :name
        element :row, :value => :address1, :as => :street_address
        element :row, :value => :address2, :as => :extended_address
        element :row, :value => :city, :as => :locality
        element :row, :value => :region_code, :as => :region
        element :row, :value => :postal_code, :as => :postal_code
        element :row, :value => :country_code, :as => :country_code
        element :row, :value => :phone, :as => :phone
        element :row, :value => :market_area_id, :as => :market_area_id
      end

      elements :row, :as => :venues, :class => Venue
    end

    get :get_all_venues, :as => :fetch

    class << self
      def all(parameters={})
        fetch(parameters).venues
      end
    end
  end
end
