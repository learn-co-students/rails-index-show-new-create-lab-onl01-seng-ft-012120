class CouponsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :coupons do |x|
      x.string :coupon_code
      x.string :store
    end
  end
end
