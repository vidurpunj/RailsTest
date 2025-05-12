# +-------------+---------------+------+-----+---------+----------------+
# | Field       | Type          | Null | Key | Default | Extra          |
#   +-------------+---------------+------+-----+---------+----------------+
# | id          | bigint        | NO   | PRI | NULL    | auto_increment |
# | user_id     | bigint        | NO   | MUL | NULL    |                |
# | product_id  | bigint        | NO   | MUL | NULL    |                |
# | quantity    | int           | YES  |     | NULL    |                |
# | total_price | decimal(10,0) | YES  |     | NULL    |                |
# | created_at  | datetime(6)   | NO   |     | NULL    |                |
# | updated_at  | datetime(6)   | NO   |     | NULL    |                |
# +-------------+---------------+------+-----+---------+----------------+
class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def buy?
    quantity > 0
  end

  def be_valid?
    # used price association of product
    quantity * product.price > 0
  end

  # Max no. of products to be purchased
  def is_right?
    quantity < 100
  end

  # Max amount_per_transaction
  def max_amount?
    quantity * product.price < 10000
  end

end
