module EventInventory::Catalog
  class Performer < Base
    class Parser
      include ParseHelper

      class Performer
        include ParseHelper

        element :row, :value => :event_id, :as => :id
        element :row, :value => :event_name, :as => :name
        element :row, :value => :event_type_id, :as => :event_type_id
        element :row, :value => :category_id, :as => :category_id
      end

      elements :row, :as => :performers, :class => Performer
    end

    get :get_all_events, :as => :fetch

    class << self
      def all(parameters={})
        fetch(parameters).performers
      end
    end
  end
end
