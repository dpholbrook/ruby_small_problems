=begin
  input: text file
  output:
    paragraphs
    lines
    words

  rules:
    - in process instance method, read text from text file
    - pass the text to the block provided in process call

=end

class TextAnalyzer
  def process
    @file = File.open('sample_text.txt', 'r')
    yield @file.read if block_given?
    @file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.split("\n\n").count} paragraphs" }
analyzer.process { |text| puts "#{text.split(/\n/).count} lines" }
analyzer.process { |text| puts "#{text.split.count} words" }
