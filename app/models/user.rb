# frozen_string_literal: true

class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :username, type: String
  field :email
  field :password, type: String
  field :password_confirmation, type: String

  validates :name, presence: true, uniqueness: true

  validates :username, presence: true, uniqueness: true

  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :password,
            length: { minimum: 6 },
            if: -> { new_record? || !password.nil? }

  validates :password_confirmation,
            length: { minimum: 6 },
            if: -> { new_record? || !password.nil? }
end
