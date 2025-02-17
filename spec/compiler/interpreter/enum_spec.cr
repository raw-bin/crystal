{% skip_file if flag?(:without_interpreter) %}
require "./spec_helper"

describe Crystal::Repl::Interpreter do
  context "enum" do
    it "does enum value" do
      interpret(<<-CODE).should eq(2)
        enum Color
          Red
          Green
          Blue
        end

        Color::Blue.value
      CODE
    end

    it "does enum new" do
      interpret(<<-CODE).should eq(2)
        enum Color
          Red
          Green
          Blue
        end

        blue = Color.new(2)
        blue.value
      CODE
    end
  end
end
