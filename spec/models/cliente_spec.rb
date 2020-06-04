require 'rails_helper'

RSpec.describe Cliente, type: :model do
    before(:each) do
    @clientes = Cliente.create!(mail:"example@mail.com", nombre:"weeb", password_digest:"1234")
  end

  describe "creation" do
    it "should have one item created after being created" do
        expect(Cliente.all.count).to eq(1)
    end
  end

  describe "validations" do
    it "should not let a user be created without an email address" do
        @clientes.email = nil
        expect(@clientes).to_not be_valid
    end
  end
end
