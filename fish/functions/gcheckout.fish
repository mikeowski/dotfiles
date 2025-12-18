function gcheckout
    if test (count $argv) -lt 2
        echo "Usage: gcheckout <task-id> <task-prefix>"
        echo "Example: gcheckout EPG-2354 provider-disable-fix"
        return 1
    end

    set -l task_id $argv[1]
    set -l task_prefix $argv[2]
    set -l date (date +%Y%m%d)
    set -l branch_name "mike-zeroday/$task_id/$task_prefix/$date"

    git checkout -b $branch_name
end
