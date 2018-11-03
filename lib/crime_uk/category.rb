module CrimeUk
  class Category
    def self.all(year, month)
      Request::Category.show year.to_s, month.to_s
    end
  end
end
