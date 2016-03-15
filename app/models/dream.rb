class Dream < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
	                  format: { with: VALID_EMAIL_REGEX }
	validates :amount, numericality:

	def self.monthly_payment(dream)
		@dream = dream
		if @dream.term = 1
			@dream.term = 12
		elsif @dream.term = 2
			@dream.term = 24
		elsif @dream.term = 3
			@dream.term = 36
		else @dream.term = 48
		end
		a = @dream.amount
		b = @dream.term
			return a / b
	end

	def self.total_savings(dream)
		@dream = dream
		@amount = @dream.amount
		@total = 0
			if @dream.term = 1
				@total = @amount * 0.028
			elsif @dream.term = 2
				@total = @amount * 0.0325
			elsif @dream.term = 3
				@total = @amount * 0.0370
			else @total = @amunt * 0.040
		end
		return @total + @amount
	end

end
