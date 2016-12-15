require "rails"
require "presenter/version"

module Presenter
  autoload :Presentable,    'presenter/presentable'
  autoload :BasePresenter,  'presenter/base'
  autoload :NullPresenter,  'presenter/null'
end
