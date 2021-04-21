=begin
#Selling Partner API for Finances

#The Selling Partner API for Finances helps you obtain financial information relevant to a seller's business. You can obtain financial events for a given order, financial event group, or date range without having to wait until a statement period closes. You can also obtain financial event groups for a given date range.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

require 'spec_helper'
require 'json'

# Unit tests for AmzSpApi::FinancesApiModel::DefaultApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DefaultApi' do
  before do
    # run before each test
    @instance = AmzSpApi::FinancesApiModel::DefaultApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DefaultApi' do
    it 'should create an instance of DefaultApi' do
      expect(@instance).to be_instance_of(AmzSpApi::FinancesApiModel::DefaultApi)
    end
  end

  # unit tests for list_financial_event_groups
  # Returns financial event groups for a given date range.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :max_results_per_page The maximum number of results to return per page.
  # @option opts [DateTime] :financial_event_group_started_before A date used for selecting financial event groups that opened before (but not at) a specified date and time, in ISO 8601 format. The date-time  must be later than FinancialEventGroupStartedAfter and no later than two minutes before the request was submitted. If FinancialEventGroupStartedAfter and FinancialEventGroupStartedBefore are more than 180 days apart, no financial event groups are returned.
  # @option opts [DateTime] :financial_event_group_started_after A date used for selecting financial event groups that opened after (or at) a specified date and time, in ISO 8601 format. The date-time must be no later than two minutes before the request was submitted.
  # @option opts [String] :next_token A string token returned in the response of your previous request.
  # @return [ListFinancialEventGroupsResponse]
  describe 'list_financial_event_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_financial_events
  # Returns financial events for the specified data range.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :max_results_per_page The maximum number of results to return per page.
  # @option opts [DateTime] :posted_after A date used for selecting financial events posted after (or at) a specified time. The date-time must be no later than two minutes before the request was submitted, in ISO 8601 date time format.
  # @option opts [DateTime] :posted_before A date used for selecting financial events posted before (but not at) a specified time. The date-time must be later than PostedAfter and no later than two minutes before the request was submitted, in ISO 8601 date time format. If PostedAfter and PostedBefore are more than 180 days apart, no financial events are returned. You must specify the PostedAfter parameter if you specify the PostedBefore parameter. Default: Now minus two minutes.
  # @option opts [String] :next_token A string token returned in the response of your previous request.
  # @return [ListFinancialEventsResponse]
  describe 'list_financial_events test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_financial_events_by_group_id
  # Returns all financial events for the specified financial event group.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param event_group_id The identifier of the financial event group to which the events belong.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :max_results_per_page The maximum number of results to return per page.
  # @option opts [String] :next_token A string token returned in the response of your previous request.
  # @return [ListFinancialEventsResponse]
  describe 'list_financial_events_by_group_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_financial_events_by_order_id
  # Returns all financial events for the specified order.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 30 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param order_id An Amazon-defined order identifier, in 3-7-7 format.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :max_results_per_page The maximum number of results to return per page.
  # @option opts [String] :next_token A string token returned in the response of your previous request.
  # @return [ListFinancialEventsResponse]
  describe 'list_financial_events_by_order_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
