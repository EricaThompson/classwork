require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  subject(:michelle) { User.create(username: 'Michelle', password: 'password123')}

  describe 'validations' do
    it 'validates username' do 
      should validates_presence_of(:username)
    end

    it 'validates password' do
      should validate_presence_of(:password)
    end

    it 'validates password_digest' do
      should validate_presence_of(:password_digest)
    end
    
    it 'validates session_token' do
      should validate_presence_of(:session_token)
    end

    it 'validates uniqueness of username' do
      should validate_uniqueness_of(:username)
    end

    it 'validates uniqueness of session_token' do
      should validate_uniqueness_of(:session_token)
    end

  end

  describe 'associations' do
  end

=begin
  def self.find_by_cred(un,pw)
    user = User.find_by_cred(un)
  end

  
=end

  describe 'User::find_by_credentials(un,pw)' do
    let(:user) { FactoryBot.create(:user) }
    it 'finds user' do
      expect(User).to receive(find_by_credentials).to receive(:username).to eq(:user)
    end
    #   expect(:user).to receive(:password=)
    # end
  end

  describe 'User#password=(password)' do
    let(:user) { FactoryBot.create(:user) }
    it 'encrypts password' do
      # expect(user.password=('password123')).to be BCrypt::Password
      expect(BCrypt::Password).to receive(:create).with('abcdef')
      FactoryBot.build(:user, password: 'abcdef') 
    end
  end


  describe 'User#is_password?' do
    let(:user) { FactoryBot.create(:user) }

    context 'with a valid password' do
      it 'should return true' do
        expect(user.is_password?('password123')).to be true
      end
    end

    context 'with an invalid password' do
      it 'should return false' do
        expect(user.is_password?('dekunut')).to be false
      end
    end

  end


  describe 'User#reset_session_token!' do
    it 'uses specific function' do
      expect(SecureRandom).to receive(:urlsafe_base64)
    end
  end


  describe 'User#ensure_session_token' do
    it 'also uses specific function' do
      expect(SecureRandom).to receive(:urlsafe_base64)
    end
  end

end
