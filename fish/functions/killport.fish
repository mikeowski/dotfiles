function killport --description 'Send kill signal to all processes using the given port'
    if test (count $argv) -lt 1
        echo "Usage: killport <port> [signal]" 1>&2
        echo "Example:  killport 3000        # default SIGTERM"
        echo "          killport 3000 KILL   # force with SIGKILL"
        return 2
    end

    set -l port $argv[1]
    set -l sig TERM
    if test (count $argv) -ge 2
        set sig $argv[2]
    end

    # Collect all PIDs using the port (both TCP/UDP, IPv4/IPv6). -t returns only PIDs.
    set -l pids (command lsof -t -i :$port 2>/dev/null | sort -u)

    # If no result as a regular user, try with sudo
    if test (count $pids) -eq 0
        if type -q sudo
            set pids (sudo lsof -t -i :$port 2>/dev/null | sort -u)
        end
    end

    if test (count $pids) -eq 0
        echo "No process found using port $port."
        return 0
    end

    echo "Sending signal $sig → processes using port $port: $pids"

    for pid in $pids
        if kill -$sig $pid 2>/dev/null
            echo "✓ $pid terminated"
        else if type -q sudo; and sudo kill -$sig $pid 2>/dev/null
            echo "✓ (sudo) $pid terminated"
        else
            echo "✗ Could not terminate $pid (might require higher privileges)"
        end
    end
end
