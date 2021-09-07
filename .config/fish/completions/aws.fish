complete --command aws --no-files --arguments '(
    begin
        set -lx COMP_SHELL fish
        set -lx COMP_LINE (commandline)
        aws_completer
    end
)'
