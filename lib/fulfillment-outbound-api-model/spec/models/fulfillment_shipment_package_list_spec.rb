=begin
#Selling Partner APIs for Fulfillment Outbound

#The Selling Partner API for Fulfillment Outbound lets you create applications that help a seller fulfill Multi-Channel Fulfillment orders using their inventory in Amazon's fulfillment network. You can get information on both potential and existing fulfillment orders.

OpenAPI spec version: 2020-07-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::FulfillmentOutboundApiModel::FulfillmentShipmentPackageList
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FulfillmentShipmentPackageList' do
  before do
    # run before each test
    @instance = AmzSpApi::FulfillmentOutboundApiModel::FulfillmentShipmentPackageList.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FulfillmentShipmentPackageList' do
    it 'should create an instance of FulfillmentShipmentPackageList' do
      expect(@instance).to be_instance_of(AmzSpApi::FulfillmentOutboundApiModel::FulfillmentShipmentPackageList)
    end
  end
end
