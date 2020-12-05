require 'rails_helper'

RSpec.describe Music, type: :model do
  describe '#create' do
    before do
      @music = FactoryBot.build(:music)
    end

    describe '音楽新規投稿' do
      context '新規投稿がうまくいくとき' do
        it '全ての項目の入力が存在すれば登録できること' do
          expect(@music).to be_valid
        end
      end

      context '新規投稿がうまくいかないとき' do
        it 'タイトルが空では登録できないこと' do
          @music.title = ''
          @music.valid?
          expect(@music.errors.full_messages).to include('タイトルを入力してください')
        end

        it 'アーティストが空では登録できないこと' do
          @music.artist = ''
          @music.valid?
          expect(@music.errors.full_messages).to include('アーティストを入力してください')
        end

        it 'イメージ画像が空では登録できないこと' do
          @music.image = nil
          @music.valid?
          expect(@music.errors.full_messages).to include('イメージ画像を入力してください')
        end

        it 'mp3 fileが空では登録できないこと' do
          @music.audio = nil
          @music.valid?
          expect(@music.errors.full_messages).to include('mp3 fileを入力してください')
        end

        it '曲紹介が空では登録できないこと' do
          @music.introduction = ''
          @music.valid?
          expect(@music.errors.full_messages).to include('曲紹介を入力してください')
        end
      end
    end
  end
end
