module AncestorAttributes
  def self.example
    Example.new
  end

  def self.assignment
    Settings::Setting::Assignment
  end

  class Super
    setting :some_setting
  end

  class Example < Super
  end
end

describe "Ancestor Attributes" do
  specify "An ancestor's attribute is assignable" do
    example = AncestorAttributes.example

    assert(AncestorAttributes.assignment.assignable?(example, :some_setting))
  end
end
