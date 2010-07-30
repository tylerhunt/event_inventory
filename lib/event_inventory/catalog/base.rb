module EventInventory::Catalog
  class Base < EventInventory::Base
    service :catalog
  end

  ParseHelper = EventInventory::ParseHelper
end
