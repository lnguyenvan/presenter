$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "presenter"

class Foo
  include Presenter::Presentable

  class_attribute :first_name, :last_name

  def initialize
    self.first_name = 'foo'
    self.last_name = 'bar'
  end
end

class FooPresenter < Presenter::BasePresenter
  def full_name
    @model.first_name + ' ' + @model.last_name
  end
end

class Bar
  include Presenter::Presentable
end