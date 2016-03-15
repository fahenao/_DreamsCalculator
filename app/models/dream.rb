class Dream < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
	                  format: { with: VALID_EMAIL_REGEX }
	validates :amount, numericality:

	def self.monthly_payment(dream)
		@dream = dream
		a = @dream.amount
		b = @dream.term
		case @dream.term
			when 1
			  total = a / 12
			when 2
			  total = a / 24
			when 3
			  total = a / 36
			else
				total = a / 48
		end
		return total.to_f
	end

	def self.total_savings(dream)
		@dream = dream
		@amount = @dream.amount
		@term = @dream.term
		@total = 0
		
		case @term
			when 1
			  @total = @amount * 0.028
			when 2
			  @total = @amount * 0.0325
			when 3
			  @total = @amount * 0.0370
			else
				@total = @amount * 0.040
		end

		return @total + @amount
	end

end
