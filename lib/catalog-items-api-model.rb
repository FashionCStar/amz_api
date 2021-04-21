=begin
#Selling Partner API for Catalog Items

#The Selling Partner API for Catalog Items helps you programmatically retrieve item details for items in the catalog.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

# Common files
require 'catalog-items-api-model/api_client'
require 'catalog-items-api-model/api_error'
require 'catalog-items-api-model/version'
require 'catalog-items-api-model/configuration'

# Models
require 'catalog-items-api-model/models/asin_identifier'
require 'catalog-items-api-model/models/attribute_set_list'
require 'catalog-items-api-model/models/attribute_set_list_type'
require 'catalog-items-api-model/models/categories'
require 'catalog-items-api-model/models/creator_type'
require 'catalog-items-api-model/models/decimal_with_units'
require 'catalog-items-api-model/models/dimension_type'
require 'catalog-items-api-model/models/error'
require 'catalog-items-api-model/models/error_list'
require 'catalog-items-api-model/models/get_catalog_item_response'
require 'catalog-items-api-model/models/identifier_type'
require 'catalog-items-api-model/models/image'
require 'catalog-items-api-model/models/item'
require 'catalog-items-api-model/models/item_list'
require 'catalog-items-api-model/models/language_type'
require 'catalog-items-api-model/models/list_catalog_categories_response'
require 'catalog-items-api-model/models/list_catalog_items_response'
require 'catalog-items-api-model/models/list_matching_items_response'
require 'catalog-items-api-model/models/list_of_categories'
require 'catalog-items-api-model/models/number_of_offer_listings_list'
require 'catalog-items-api-model/models/offer_listing_count_type'
require 'catalog-items-api-model/models/price'
require 'catalog-items-api-model/models/qualifiers_type'
require 'catalog-items-api-model/models/relationship_list'
require 'catalog-items-api-model/models/relationship_type'
require 'catalog-items-api-model/models/sales_rank_list'
require 'catalog-items-api-model/models/sales_rank_type'
require 'catalog-items-api-model/models/seller_sku_identifier'
require 'catalog-items-api-model/models/shipping_time_type'

# APIs
require 'catalog-items-api-model/api/catalog_api'

module AmzSpApi::CatalogItemsApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::CatalogItemsApiModel.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
