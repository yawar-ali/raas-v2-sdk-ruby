# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Raas
  class CreateOrderRequestModel < BaseModel
    # Account Identifier
    # @return [String]
    attr_accessor :account_identifier

    # Amount
    # @return [Float]
    attr_accessor :amount

    # Customer Identifier
    # @return [String]
    attr_accessor :customer_identifier

    # Send Email
    # @return [Boolean]
    attr_accessor :send_email

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

    # Email Message
    # @return [String]
    attr_accessor :message

    # Recipient
    # @return [NameEmailModel]
    attr_accessor :recipient

    # Sender
    # @return [NameEmailModel]
    attr_accessor :sender

    # Notes
    # @return [String]
    attr_accessor :notes

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["account_identifier"] = "accountIdentifier"
        @_hash["amount"] = "amount"
        @_hash["customer_identifier"] = "customerIdentifier"
        @_hash["send_email"] = "sendEmail"
        @_hash["utid"] = "utid"
        @_hash["campaign"] = "campaign"
        @_hash["email_subject"] = "emailSubject"
        @_hash["external_ref_id"] = "externalRefID"
        @_hash["message"] = "message"
        @_hash["recipient"] = "recipient"
        @_hash["sender"] = "sender"
        @_hash["notes"] = "notes"
      end
      @_hash
    end

    def initialize(account_identifier = nil,
                   amount = nil,
                   customer_identifier = nil,
                   send_email = nil,
                   utid = nil,
                   campaign = nil,
                   email_subject = nil,
                   external_ref_id = nil,
                   message = nil,
                   recipient = nil,
                   sender = nil,
                   notes = nil)
      @account_identifier = account_identifier
      @amount = amount
      @customer_identifier = customer_identifier
      @send_email = send_email
      @utid = utid
      @campaign = campaign
      @email_subject = email_subject
      @external_ref_id = external_ref_id
      @message = message
      @recipient = recipient
      @sender = sender
      @notes = notes
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      account_identifier = hash['accountIdentifier']
      amount = hash['amount']
      customer_identifier = hash['customerIdentifier']
      send_email = hash['sendEmail']
      utid = hash['utid']
      campaign = hash['campaign']
      email_subject = hash['emailSubject']
      external_ref_id = hash['externalRefID']
      message = hash['message']
      recipient = NameEmailModel.from_hash(hash['recipient']) if hash['recipient']
      sender = NameEmailModel.from_hash(hash['sender']) if hash['sender']
      notes = hash['notes']

      # Create object from extracted values
      CreateOrderRequestModel.new(account_identifier,
                                  amount,
                                  customer_identifier,
                                  send_email,
                                  utid,
                                  campaign,
                                  email_subject,
                                  external_ref_id,
                                  message,
                                  recipient,
                                  sender,
                                  notes)
    end
  end
end
