# +------------------------+--------------+------+-----+---------+----------------+
# | Field                  | Type         | Null | Key | Default | Extra          |
#   +------------------------+--------------+------+-----+---------+----------------+
# | id                     | bigint       | NO   | PRI | NULL    | auto_increment |
# | name                   | varchar(255) | YES  |     | NULL    |                |
# | email                  | varchar(255) | YES  | UNI | NULL    |                |
# | created_at             | datetime(6)  | NO   |     | NULL    |                |
# | updated_at             | datetime(6)  | NO   |     | NULL    |                |
# | encrypted_password     | varchar(255) | NO   |     |         |                |
# | reset_password_token   | varchar(255) | YES  | UNI | NULL    |                |
# | reset_password_sent_at | datetime(6)  | YES  |     | NULL    |                |
# | remember_created_at    | datetime(6)  | YES  |     | NULL    |                |
# | sign_in_count          | int          | NO   |     | 0       |                |
# | current_sign_in_at     | datetime(6)  | YES  |     | NULL    |                |
# | last_sign_in_at        | datetime(6)  | YES  |     | NULL    |                |
# | current_sign_in_ip     | varchar(255) | YES  |     | NULL    |                |
# | last_sign_in_ip        | varchar(255) | YES  |     | NULL    |                |
# | confirmation_token     | varchar(255) | YES  | UNI | NULL    |                |
# | confirmed_at           | datetime(6)  | YES  |     | NULL    |                |
# | confirmation_sent_at   | datetime(6)  | YES  |     | NULL    |                |
# | unconfirmed_email      | varchar(255) | YES  |     | NULL    |                |
# | failed_attempts        | int          | NO   |     | 0       |                |
# | unlock_token           | varchar(255) | YES  | UNI | NULL    |                |
# | locked_at              | datetime(6)  | YES  |     | NULL    |                |
# +------------------------+--------------+------+-----+---------+----------------+
class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable

  has_many :projects, dependent: :destroy

 has_many :transactions
 has_many :products, through: :transactions

 validates :name, presence: true
 validates :email, presence: true, uniqueness: true

    after_commit :create_stripe_customer, on: :create
    def create_stripe_customer
      puts "***************** create stripe customer *******************"
      # CreateStripeCustomerJob.perform_later(id)
    end
end
