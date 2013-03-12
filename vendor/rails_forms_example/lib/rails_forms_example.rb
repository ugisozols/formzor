require "rails_forms_example/version"
require "rails_forms_example/engine"
require "action_view"
require "bootstrap-sass"

module RailsFormsExample
  class UgisBuilder < ActionView::Helpers::FormBuilder
    def text_field(label, *args)
      @template.content_tag("div", :class => "control-group") do
        @template.content_tag("label",
                              label.to_s.humanize,
                              :for => "#{@object_name}_#{label}",
                              :class => "control-label") +
        @template.content_tag("div", :class => "controls") do
          @template.content_tag("input",
            nil,
            :id => "#{@object_name}_#{label}",
            :name => "#{@object_name}[#{label}]",
            :type => "text")
        end
      end
    end
  end
end
