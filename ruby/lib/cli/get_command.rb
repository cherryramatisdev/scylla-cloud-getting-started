# frozen_string_literal: true

module CLI
  # @param help_message [String] If the command is invalid or empty this will be the fallback output to stdout
  # @return [String]
  def self.get_command(help_message)
    print 'Type any *available* command: '
    cmd = $stdin.gets.chomp

    if cmd.empty?
      puts help_message

      return get_command(help_message)
    end

    cmd
  end
end
