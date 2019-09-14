require 'rails_helper'

RSpec.describe Contact, type: :model do

  before do
    @contact = build(:contact)
  end

  it "すべてのバリデーションが通れば、有効な状態であること" do
    expect(@contact).to be_valid
  end

  it "「お名前」がなければ無効な状態であること" do
    @contact.name = nil
    @contact.valid?
    expect(@contact.errors[:name]).to include("を入力してください")
  end

  it "「メールアドレス」がなければ無効な状態であること" do
    @contact.email = nil
    @contact.valid?
    expect(@contact.errors[:email]).to include("を入力してください")
  end

  it "「電話番号」がなければ無効な状態であること" do
    @contact.telephone = nil
    @contact.valid?
    expect(@contact.errors[:telephone]).to include("を入力してください")
  end

  it "「お問い合わせ内容」がなければ無効な状態であること" do
    @contact.message = nil
    @contact.valid?
    expect(@contact.errors[:message]).to include("を入力してください")
  end

  it "「貴社名」が256文字以上であれば無効な状態であること" do
    @contact.company = 'a' * 256
    @contact.valid?
    expect(@contact.errors[:company]).to include("は255文字以内で入力してください")
  end

  it "「お名前」が256文字以上であれば無効な状態であること" do
    @contact.name = 'a' * 256
    @contact.valid?
    expect(@contact.errors[:name]).to include("は255文字以内で入力してください")
  end

  it "「メールアドレス」が256文字以上であれば無効な状態であること" do
    @contact.email = 'a' * 256
    @contact.valid?
    expect(@contact.errors[:email]).to include("は255文字以内で入力してください")
  end

  it "「メールアドレス」に不正な文字が含まれると無効な状態であること" do
    invalid_addresses = %w[Aa1+-.~@a1-..com Aa1+-.@a1-.~.com Aa1+-.@a1-..com~]
    invalid_addresses.each do |invalid_address|
      @contact.email = invalid_address
      @contact.valid?
      expect(@contact.errors[:email]).to include("は不正な値です")
    end
  end

  it "「電話番号」が不正なフォーマットであれば無効な状態であること" do
    invalid_telephone_numbers = %w[1234567890a 123456789 123456789012]
    invalid_telephone_numbers.each do |invalid_telephone_number|
      @contact.telephone = invalid_telephone_number
      @contact.valid?
      expect(@contact.errors[:telephone]).to include("は不正な値です")
    end
  end

end
