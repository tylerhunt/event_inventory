module EventInventory::Catalog
  class Category < Base
    class Parser
      include ParseHelper

      class Category
        include ParseHelper

        element :row, :value => :category_id, :as => :id
        element :row, :value => :category_name, :as => :name
        element :row, :value => :parent_category_id, :as => :parent_id
      end

      elements :row, :as => :categories, :class => Category
    end

    get :get_all_categories, :as => :fetch

    class << self
      def all(parameters={})
        fetch(parameters).categories
      end
    end
  end
end
