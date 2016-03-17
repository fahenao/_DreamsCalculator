class Dream < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
	                  format: { with: VALID_EMAIL_REGEX }
	validates :amount, :numericality => { :greater_than_or_equal_to => 50 }


	def self.monthly_payment(dream)
		@dream = dream
		a = BigDecimal.new(@dream.amount).truncate(2)
		b = @dream.term
		case b
			when 1
			  total = a / (BigDecimal.new(12))
			when 2
			  total = a / (BigDecimal.new(24))
			when 3
			  total = a / (BigDecimal.new(36))
			else
				total = a / (BigDecimal.new(48))
		end
		result = BigDecimal.new(total)
		return result
	end

	def self.total_savings(dream)
		@dream = dream
		@amount = @dream.amount
		@term = @dream.term
		@total = 0	
		case @term
			when 1
			  @total = BigDecimal.new(@amount) * 0.028
			when 2
			  @total = @amount * 0.0325
			when 3
			  @total = @amount * 0.0370
			else
				@total = @amount * 0.040
		end
		result = @total + @amount 
		return result
	end

end
