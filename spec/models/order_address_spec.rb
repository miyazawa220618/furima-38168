require 'rails_helper'

RSpec.describe Order, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @item = FactoryBot.build(:item)
    @item.item_image.attach(io: File.open('public/images/sample1.png'), filename: 'sample1.png')
    @item.save
    @order_address = FactoryBot.build(:order_address, user_id: @user.id, item_id: @item.id)
    sleep 0.1
  end

  describe '商品の購入' do
    context '商品を購入できる場合' do
      it '全ての情報が正しい形式で存在すれば購入できる' do
        expect(@order_address).to be_valid
      end
      it 'buildingが空でも購入できる' do
        
      end
    end

    context '商品を購入できない場合' do
      it 'postal_codeが空の場合は購入できない' do

      end
      it 'postal_codeが「3桁ハイフン4桁」の半角文字列以外の形式の場合は購入できない' do
        
      end
      it 'prefecture_idが未選択の場合は購入できない' do
        
      end
      it 'cityが空の場合は購入できない' do
        
      end
      it 'house_numberが空の場合は購入できない' do
        
      end
      it 'phone_numberが空の場合は購入できない' do
        
      end
      it 'phone_numberが「10桁以上11桁以内の半角数字」以外の場合は購入できない' do
        
      end
      it 'userテーブルと紐づいていない場合は購入できない' do
        
      end
      it 'itemテーブルと紐づいていない場合は購入できない' do
        
      end
    end

  end
end
