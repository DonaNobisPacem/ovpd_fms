module FinancialYearsHelper
	def financial_entries_ajax_previous_link
		->(param, date_range) { link_to raw("&laquo;"), {param => date_range.first - 1.day}, remote: :true}
	end

	def financial_entries_ajax_next_link
		->(param, date_range) { link_to raw("&raquo;"), {param => date_range.last + 1.day}, remote: :true}
	end
end
