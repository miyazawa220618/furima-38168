require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '出品商品の登録' do
    context '出品商品を登録できる場合' do
      it '全ての情報が存在すれば登録できる' do
        expect(@item).to be_valid
      end
    end
    context '出品商品を登録できない場合' do
      it 'item_imageが未選択の場合は登録できない' do
        
      end
      it 'nameが空の場合は登録できない' do
        
      end
      it 'infoが空の場合は登録できない' do
        
      end
      it 'category_idが未選択の場合は登録できない' do
        
      end
      it 'sales_status_idが未選択の場合は登録できない' do
        
      end
      it 'shipping_fee_status_idが未選択の場合は登録できない' do
        
      end
      it 'prefecture_idが未選択の場合は登録できない' do
        
      end
      it 'scheduled_delivery_idが未選択の場合は登録できない' do
        
      end
      it 'priceが空の場合は登録できない' do
        
      end
      it 'priceが¥300未満の場合は登録できない' do
        
      end
      it 'priceが¥10,000,000以上の場合は登録できない' do
        
      end
    end
  end
end
