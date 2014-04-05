require 'spec_helper'

describe Drink do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :mood }
  it { should validate_presence_of :city }
  it { should validate_presence_of :atmosphere }

  describe 'crazy_formula' do
    it 'returns a drink from selected values' do
      drink1 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'suicidal', :city => 'NY', :atmosphere => 'alone')
      drink2 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'NY', :atmosphere => 'friends')
      drink3 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'suicidal', :city => 'LA', :atmosphere => 'family')
      drink4 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'angry', :city => 'Miami', :atmosphere => 'bad_date')
      drink5 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'LA', :atmosphere => 'family')
      drink6 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'LA', :atmosphere => 'friends')

      Array.any_instance.stub(:sample).and_return(drink6)
      Drink.crazy_formula({:gender => 'f', :mood => 'angry', :city => 'NY', :atmosphere => 'friends'}).count.should eq 2
    end
    it 'returns a drink from selected values' do
      drink1 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'suicidal', :city => 'NY', :atmosphere => 'alone')
      drink2 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'NY', :atmosphere => 'friends')
      drink3 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'suicidal', :city => 'LA', :atmosphere => 'family')
      drink4 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'angry', :city => 'Miami', :atmosphere => 'bad_date')
      drink5 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'LA', :atmosphere => 'family')
      drink6 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'LA', :atmosphere => 'friends')

      Drink.crazy_formula({:gender => 'f', :mood => 'angry', :city => 'NY', :atmosphere => 'friends'}).count.should eq 2
    end
    it 'returns a drink from selected values' do
      drink1 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'suicidal', :city => 'NY', :atmosphere => 'alone')
      drink2 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'NY', :atmosphere => 'friends')
      drink3 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'suicidal', :city => 'LA', :atmosphere => 'family')
      drink4 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'angry', :city => 'Miami', :atmosphere => 'bad_date')
      drink5 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'LA', :atmosphere => 'family')
      drink6 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'LA', :atmosphere => 'friends')
      Drink.crazy_formula({:gender => 'f', :mood => 'angry', :city => 'NY', :atmosphere => 'friends'}).count.should eq 2
    end
    it 'returns a drink from selected values' do
      drink1 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'suicidal', :city => 'NY', :atmosphere => 'alone')
      drink2 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'NY', :atmosphere => 'friends')
      drink3 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'suicidal', :city => 'LA', :atmosphere => 'family')
      drink4 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'angry', :city => 'Miami', :atmosphere => 'bad_date')
      drink5 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'LA', :atmosphere => 'family')
      drink6 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'LA', :atmosphere => 'friends')
      Drink.crazy_formula({:gender => 'f', :mood => 'angry', :city => 'NY', :atmosphere => 'friends'}).count.should eq 2
    end
    it 'returns a drink from selected values' do
      drink1 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'suicidal', :city => 'NY', :atmosphere => 'alone')
      drink2 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'NY', :atmosphere => 'friends')
      drink3 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'suicidal', :city => 'LA', :atmosphere => 'family')
      drink4 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'angry', :city => 'Miami', :atmosphere => 'bad_date')
      drink5 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'LA', :atmosphere => 'family')
      drink6 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'LA', :atmosphere => 'friends')
      Drink.crazy_formula({:gender => 'f', :mood => 'angry', :city => 'NY', :atmosphere => 'friends'}).count.should eq 2
    end
    it 'returns a drink from selected values' do
      drink1 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'suicidal', :city => 'NY', :atmosphere => 'alone')
      drink2 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'NY', :atmosphere => 'friends')
      drink3 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'suicidal', :city => 'LA', :atmosphere => 'family')
      drink4 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'angry', :city => 'Miami', :atmosphere => 'bad_date')
      drink5 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'LA', :atmosphere => 'family')
      drink6 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'LA', :atmosphere => 'friends')
      Drink.crazy_formula({:gender => 'f', :mood => 'angry', :city => 'NY', :atmosphere => 'friends'}).count.should eq 2
    end
    it 'returns a drink from selected values' do
      drink1 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'suicidal', :city => 'NY', :atmosphere => 'alone')
      drink2 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'NY', :atmosphere => 'friends')
      drink3 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'suicidal', :city => 'LA', :atmosphere => 'family')
      drink4 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'f', :mood => 'angry', :city => 'Miami', :atmosphere => 'bad_date')
      drink5 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'LA', :atmosphere => 'family')
      drink6 = Drink.create(:name => 'vodka tonic', :description => 'for hardcore James Bonders', :category => 'liquor', :gender => 'm', :mood => 'suicidal', :city => 'LA', :atmosphere => 'friends')
      Drink.crazy_formula({:gender => 'f', :mood => 'angry', :city => 'NY', :atmosphere => 'friends'}).count.should eq 2
    end
  end
end




      Drink.create(:name => 'ruby beer', :description => "drink if you're a Portland hipster", :category => 'beer', :mood => 'jolly', :city => 'Portland', :atmosphere => 'friends')
      Drink.create(:name => 'classy zinfandel', :description => 'classy and elegant', :category => 'wine', :mood => 'happy', :city => 'NY', :atmosphere => 'family')
      Drink.create(:name => 'classy zinfandel', :description => 'classy and elegant', :category => 'wine', :mood => 'happy', :city => 'NY', :atmosphere => 'friends')
