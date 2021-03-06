module Raudi

  module StateList

    Info.pin_states.each do |common_state|
      define_method "#{common_state}_pins" do
        pins.select { |pin| pin.send("#{common_state}?") }
      end
      
      define_method "#{common_state}_present?" do
        pins.any? { |pin| pin.send("#{common_state}?") }
      end
    end

  end

end
