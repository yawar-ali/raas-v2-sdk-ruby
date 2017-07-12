# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
module Raas
  class OrderModel < BaseModel
    # Account Identifier
    # @return [String]
    attr_accessor :account_identifier

    # Amount Charged
    # @return [CurrencyBreakdownModel]
    attr_accessor :amount_charged

    # Created At
    # @return [DateTime]
    attr_accessor :created_at

    # Customer Identifier
    # @return [String]
    attr_accessor :customer_identifier

    # Denomination
    # @return [CurrencyBreakdownModel]
    attr_accessor :denomination

    # Reference Order ID
    # @return [String]
    attr_accessor :reference_order_id

    # Reward
    # @return [RewardModel]
    attr_accessor :reward

    # Reward Name
    # @return [String]
    attr_accessor :reward_name

    # Send Email
    # @return [Boolean]
    attr_accessor :send_email

    # Status
    # @return [String]
    attr_accessor :status

    # UTID
    # @return [String]
    attr_accessor :utid

    # Campaign
    # @return [String]
    attr_accessor :campaign

    # Email Subject
    # @return [String]
    attr_accessor :email_subject

    # External Reference ID
    # @return [String]
    attr_accessor :external_ref_id

    # Message
    # @return [String]
    attr_accessor :message

    # Notes
    # @return [String]
    attr_accessor :notes

    # Recipient
    # @return [NameEmailModel]
    attr_accessor :recipient

    # Sender
    # @return [NameEmailModel]
    attr_accessor :sender

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["account_identifier"] = "accountIdentifier"
        @_hash["amount_charged"] = "amountCharged"
        @_hash["created_at"] = "createdAt"
        @_hash["customer_identifier"] = "customerIdentifier"
        @_hash["denomination"] = "denomination"
        @_hash["reference_order_id"] = "referenceOrderID"
        @_hash["reward"] = "reward"
        @_hash["reward_name"] = "rewardName"
        @_hash["send_email"] = "sendEmail"
        @_hash["status"] = "status"
        @_hash["utid"] = "utid"
        @_hash["campaign"] = "campaign"
        @_hash["email_subject"] = "emailSubject"
        @_hash["external_ref_id"] = "externalRefID"
        @_hash["message"] = "message"
        @_hash["notes"] = "notes"
        @_hash["recipient"] = "recipient"
        @_hash["sender"] = "sender"
      end
      @_hash
    end

    def initialize(account_identifier = nil,
                   amount_charged = nil,
                   created_at = nil,
                   customer_identifier = nil,
                   denomination = nil,
                   reference_order_id = nil,
                   reward = nil,
                   reward_name = nil,
                   send_email = nil,
                   status = nil,
                   utid = nil,
                   campaign = nil,
                   email_subject = nil,
                   external_ref_id = nil,
                   message = nil,
                   notes = nil,
                   recipient = nil,
                   sender = nil)
      @account_identifier = account_identifier
      @amount_charged = amount_charged
      @created_at = created_at
      @customer_identifier = customer_identifier
      @denomination = denomination
      @reference_order_id = reference_order_id
      @reward = reward
      @reward_name = reward_name
      @send_email = send_email
      @status = status
      @utid = utid
      @campaign = campaign
      @email_subject = email_subject
      @external_ref_id = external_ref_id
      @message = message
      @notes = notes
      @recipient = recipient
      @sender = sender
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      account_identifier = hash['accountIdentifier']
      amount_charged = CurrencyBreakdownModel.from_hash(hash['amountCharged']) if hash['amountCharged']
      created_at = DateTime.rfc3339(hash['createdAt']) if hash['createdAt']
      customer_identifier = hash['customerIdentifier']
      denomination = CurrencyBreakdownModel.from_hash(hash['denomination']) if hash['denomination']
      reference_order_id = hash['referenceOrderID']
      reward = RewardModel.from_hash(hash['reward']) if hash['reward']
      reward_name = hash['rewardName']
      send_email = hash['sendEmail']
      status = hash['status']
      utid = hash['utid']
      campaign = hash['campaign']
      email_subject = hash['emailSubject']
      external_ref_id = hash['externalRefID']
      message = hash['message']
      notes = hash['notes']
      recipient = NameEmailModel.from_hash(hash['recipient']) if hash['recipient']
      sender = NameEmailModel.from_hash(hash['sender']) if hash['sender']

      # Create object from extracted values
      OrderModel.new(account_identifier,
                     amount_charged,
                     created_at,
                     customer_identifier,
                     denomination,
                     reference_order_id,
                     reward,
                     reward_name,
                     send_email,
                     status,
                     utid,
                     campaign,
                     email_subject,
                     external_ref_id,
                     message,
                     notes,
                     recipient,
                     sender)
    end
  end
end
