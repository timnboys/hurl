$LOAD_PATH.unshift File.dirname(__FILE__) + '/../lib'
require 'rtemplate'

class ViewPartial < RTemplate
  self.path = File.dirname(__FILE__)

  def greeting
    "Welcome"
  end

  def farewell
    "Fair enough, right?"
  end
end

if $0 == __FILE__
  puts ViewPartial.to_html
end
