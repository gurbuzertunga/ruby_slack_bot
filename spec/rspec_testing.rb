require 'rspec/expectations'

RSpec::Matchers.define :respond_with_slack_message do |expected|
  include SlackRubyBot::SpecHelpers

  match do |actual|
    client = respond_to?(:client) ? send(:client) : SlackRubyBot::Client.new

    message_command = SlackRubyBot::Hooks::Message.new
    channel, user, message, attachments = parse(actual)

    allow(client).to receive(:message) do |options|
      @messages ||= []
      @messages.push options
    end

    message_command.call(client, Hashie::Mash.new(text: message, channel: channel, user: user, attachments: attachments))

    matcher = have_received(:message).once
    matcher = matcher.with(hash_including(channel: channel, text: expected)) if channel && expected

    expect(client).to matcher

    true
  end

  failure_message do |_actual|
    message = "expected to receive message with text: #{expected} once,\n received:"
    message += @messages&.any? ? @messages.inspect : 'none'
    message
  end
end

describe SlackRubyBot::Commands do
  it 'returns wiki page for ruby strings' do
    expect(message: "#{SlackRubyBot.config.user} strings").to respond_with_slack_message
  end

  it 'returns wiki page for ruby arrays' do
    expect(message: "#{SlackRubyBot.config.user} arrays").to respond_with_slack_message
  end

  it 'returns wiki page for ruby blocks_and_iterators' do
    expect(message: "#{SlackRubyBot.config.user} blocks_and_iterators").to respond_with_slack_message
  end

  it 'returns wiki page for ruby classes' do
    expect(message: "#{SlackRubyBot.config.user} classes").to respond_with_slack_message
  end

  it 'says hello' do
    expect(message: "#{SlackRubyBot.config.user} say_hello").to respond_with_slack_message
  end
end
