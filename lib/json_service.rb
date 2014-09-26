require 'json'

class Service

attr_reader :txt

  def initialize(txt)
    @txt = txt
  end

# Convert double spaces to hyphens to help with diff
# method
  def treat_input(input)
    input.gsub(/\s{2,}/, '--')
  end

# Find the differences between two strings
  def diff_input(str1, str2)
    str1.split - str2.split
  end

# Convert double hyphen back to space
  def treat_output(output)
    output.gsub(/-/, ' ')
  end

# creates a hash to hold the original
# text property initialized with each Service
  def accept_input
    hyphenate_input = treat_input(@txt)
    hyphenate_result = treat_input(@txt).squeeze
    diff = diff_input(hyphenate_input, hyphenate_result)
    output = treat_output(hyphenate_result)
    tmp = {
      'original' => @txt,
      'output' => output,
      'diff' => diff
    }
    tmp
  end


  def save_json
    js = File.open('input.json')
  end

end

service = Service.new('xyz.    ZYZ a')
p service.accept_input
