# +-------------+--------------+------+-----+---------+----------------+
# | Field       | Type         | Null | Key | Default | Extra          |
#   +-------------+--------------+------+-----+---------+----------------+
# | id          | bigint       | NO   | PRI | NULL    | auto_increment |
# | title       | varchar(255) | YES  |     | NULL    |                |
# | description | text         | YES  |     | NULL    |                |
# | user_id     | bigint       | NO   | MUL | NULL    |                |
# | created_at  | datetime(6)  | NO   |     | NULL    |                |
# | updated_at  | datetime(6)  | NO   |     | NULL    |                |
# +-------------+--------------+------+-----+---------+----------------+
class Product < ApplicationRecord
  has_many :transactions
  has_many :users, through: :transactions

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
