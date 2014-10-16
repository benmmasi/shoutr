module ApplicationHelper
  def boldify_the_user(body)
    body.gsub(/@\w+/) {|result| "<strong>#{result}</strong>"}
  end
end
