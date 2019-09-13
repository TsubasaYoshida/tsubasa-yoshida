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

end
