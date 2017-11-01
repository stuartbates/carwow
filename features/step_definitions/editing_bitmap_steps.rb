Then(/^(?:the )?(output|stderr|stdout) should match the template at: "([^"]*)"$/) do |channel, template|
  expected = File.open(template, 'r') { |f| f.read }.chomp
  combined_output = all_commands.map do |c|
    c.stop(announcer)
    c.send(channel.to_sym).chomp
  end.join("\n")
  expect(combined_output).to eq(expected)
end
