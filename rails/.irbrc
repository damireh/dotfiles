require "pry"

begin
  extend Rails::ConsoleMethods
  Pry.start; exit
rescue
end
