class Drink < ActiveRecord::Base
  validates :gender, :presence => true
  validates :name, :presence => true #, :is_alcoholic_drink => true
  validates :description, :presence => true #, :potent => true
  validates :mood, :presence => true
  validates :city, :presence => true
  validates :atmosphere, :presence => true

  attr_accessor :count

  def self.crazy_formula(params)
    drinks = Drink.where("mood = ? OR city = ? OR atmosphere = ? OR gender = ?",
                        params[:mood], params[:city], params[:atmosphere], params[:gender])
    drinks.each do |drink|
      drink.count = 0
      if drink.mood == params[:mood]
        drink.add_one
      end
      if drink.city == params[:city]
        drink.add_one
      end
      if drink.atmosphere == params[:atmosphere]
        drink.add_one
      end
      if drink.gender == params[:gender]
        drink.add_one
      end
    end
    high_number = drinks.sort_by {|drink| -drink.count}.first.count
    total_drinks =[]
    drinks.each do |drink|
      if drink.count == high_number
        total_drinks << drink
      end
    end
    total_drinks.sample
  end

  def add_one
    @count += 1
  end
end











  #has_one :outfit

  # def self.crazy_fucking_formula_for_drink
  #   if Drink.where(params[:drink])
  #     @drink = Drink.where(params[:drink])
  #   elsif

  # end
