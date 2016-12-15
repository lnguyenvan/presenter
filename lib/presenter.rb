require "rails"
require "presenter/version"
require "presenter/base"
require "presenter/null"

module Presenter
  module Presentable
    def presenter
      presenter_class = "#{self.class}Presenter".safe_constantize

      if presenter_class.nil?
        return NullPresenter.new(self)
      end

      presenter_class.new(self)
    end
  end
end
