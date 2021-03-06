module MoveToGo
    class DealStatusReference
        include SerializeHelper

        attr_accessor :label, :integration_id

        def initialize(opt = nil)
            if opt != nil
                serialize_variables.each do |myattr|
                    val = opt[myattr[:id]]
                    instance_variable_set("@" + myattr[:id].to_s, val) if val != nil
                end
            end
        end

        def serialize_variables
            [:integration_id, :label].map {|p| {:id => p, :type => :string} }
        end

        def serialize_name
            "StatusReference"
        end

        # Converts the specifed status to a status reference.
        def self.from_deal_status(deal_status)
            if deal_status.nil?
                return nil
            elsif deal_status.is_a?(DealStatusSetting)
                return deal_status.to_reference
            elsif deal_status.is_a?(String)
                return DealStatusReference.new({:label => deal_status, :integration_id => deal_status})
            end

            raise InvalidDealStatusError
        end

        def validate
            error = ""

            if (@label.nil? || @label.empty?) && (@integration_id.nil? || @integration_id.empty?)
                error = "label and integration_id can't all be nil or empty"
            end

            return error
        end
    end
end
