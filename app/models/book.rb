class Book < ApplicationRecord
# 対象のモデルにアップローダークラスとカラムを紐付け
    mount_uploader :bookimg, BookimgUploader
end
