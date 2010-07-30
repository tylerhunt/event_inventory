module EventInventory::Catalog
  class Configuration < Base
    class Parser
      include ParseHelper

      element :row, :value => :venuemap, :force => true, :as => :map_url
    end

    get :get_venue_map_url, :as => :fetch do
      parameter :event_id, :as => :performer_id
      parameter :venue_id
    end
  end
end
