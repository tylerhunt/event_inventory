module EventInventory::Catalog
  class Event < Base
    class Parser
      include ParseHelper

      class Event
        include ParseHelper

        element :row, :value => :production_id, :as => :id
        element :row, :value => :event_date, :as => :occurs_at
        element :row, :value => :event_id, :as => :performer_id
        element :row, :value => :opponent_event_id, :as => :opponent_id
        element :row, :value => :venue_id, :as => :venue_id
        element :row, :value => :short_note, :as => :note
        element :row, :value => :is_long_note_available, :as => :has_note
        element :row, :value => :min_cost, :as => :minimum_price
        element :row, :value => :max_cost, :as => :maximum_price
        element :row, :value => :content_standardization_type_id, :as => :content_standardization_type_id
      end

      elements :row, :as => :events, :class => Event
    end

    get :get_all_productions, :as => :fetch

    class << self
      def all(parameters={})
        fetch(parameters).events
      end
    end
  end
end
