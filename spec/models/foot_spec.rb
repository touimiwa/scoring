require 'rails_helper'

RSpec.describe Foot, type: :model do
  before do
    @foot = FactoryBot.build(:foot)
  end

  describe '試合結果機能' do
    context '投稿がうまくいくとき' do
      it 'one_member.two_member.three_member.four_member.five_member.six_member.seven_member.eight_member.nine_member.ten_member.eleven_member.aone_member.atwo_member.athree_member.afour_member.afive_member.asix_member.aseven_member.aeight_member.anine_member.aten_member.aeleven_member.ascore_id.bscore_id.image.が存在すれば投稿できる' do
        expect(@foot).to be_valid
      end
    end
    context '投稿がうまくいかないとき' do
      it 'ateamが空だと出品できない' do
        @foot.ateam = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Ateam can't be blank")
      end
      it 'bteamが空だと出品できない' do
        @foot.bteam = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Bteam can't be blank")
      end
      it 'one_memberが空だと出品できない' do
        @foot.one_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("One member can't be blank")
      end
      it 'two_memberが空だと出品できない' do
        @foot.two_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Two member can't be blank")
      end
      it 'three_memberが空だと出品できない' do
        @foot.three_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Three member can't be blank")
      end
      it 'four_memberが空だと出品できない' do
        @foot.four_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Four member can't be blank")
      end
      it 'five_memberが空だと出品できない' do
        @foot.five_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Five member can't be blank")
      end
      it 'six_memberが空だと出品できない' do
        @foot.six_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Six member can't be blank")
      end
      it 'seven_memberが空だと出品できない' do
        @foot.seven_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Seven member can't be blank")
      end
      it 'eight_memberが空だと出品できない' do
        @foot.eight_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Eight member can't be blank")
      end
      it 'nine_memberが空だと出品できない' do
        @foot.nine_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Nine member can't be blank")
      end
      it 'ten_memberが空だと出品できない' do
        @foot.ten_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Ten member can't be blank")
      end
      it 'eleven_memberが空だと出品できない' do
        @foot.eleven_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Eleven member can't be blank")
      end
      it 'aone_memberが空だと出品できない' do
        @foot.aone_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Aone member can't be blank")
      end
      it 'atwo_memberが空だと出品できない' do
        @foot.atwo_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Atwo member can't be blank")
      end
      it 'athree_memberが空だと出品できない' do
        @foot.athree_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Athree member can't be blank")
      end
      it 'afour_memberが空だと出品できない' do
        @foot.afour_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Afour member can't be blank")
      end
      it 'afive_memberが空だと出品できない' do
        @foot.afive_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Afive member can't be blank")
      end
      it 'asix_memberが空だと出品できない' do
        @foot.asix_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Asix member can't be blank")
      end
      it 'aseven_memberが空だと出品できない' do
        @foot.aseven_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Aseven member can't be blank")
      end
      it 'aeight_memberが空だと出品できない' do
        @foot.aeight_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Aeight member can't be blank")
      end
      it 'anine_memberが空だと出品できない' do
        @foot.anine_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Anine member can't be blank")
      end
      it 'aten_memberが空だと出品できない' do
        @foot.aten_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Aten member can't be blank")
      end
      it 'aeleven_memberが空だと出品できない' do
        @foot.aeleven_member = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include("Aeleven member can't be blank")
      end
      it 'ascore_idが空だと出品できない' do
        @foot.ascore_id = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include('Ascore is not a number')
      end
      it 'bscore_idが空だと出品できない' do
        @foot.bscore_id = ''
        @foot.valid?
        expect(@foot.errors.full_messages).to include('Bscore is not a number')
      end
    end
  end
end
