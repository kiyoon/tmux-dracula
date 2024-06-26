#!/usr/bin/env bash
# setting the locale, some users have issues with different locales, this forces the correct one
export LC_ALL=en_US.UTF-8

current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source $current_dir/utils.sh

get_gpu() {
	if command -v nvidia-smi > /dev/null 2>&1; then
		usage=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits | awk '{ sum += $0 } END { printf("%d\n", sum / NR) }')
		if [ "$usage" -ge 0 ] || [ "$usage" -le 100 ]; then
			normalize_percent_len "${usage}%"
		else
			echo "-"
		fi
	else
		echo "-"
	fi
}

main() {
	# storing the refresh rate in the variable RATE, default is 5
	RATE=$(get_tmux_option "@dracula-refresh-rate" 5)
	gpu_label=$(get_tmux_option "@dracula-gpu-usage-label" "GPU")
	gpu_usage=$(get_gpu)
	echo "$gpu_label  $gpu_usage"
	sleep $RATE
}

# run the main driver
main
