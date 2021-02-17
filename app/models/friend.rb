class Friend < ApplicationRecord
  has_many :telephones

  validates :name, presence: true,                # 空かどうか
    length: { maximum: 10, allow_blank: true }    # 10文字以内
end
