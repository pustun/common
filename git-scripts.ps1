# git functions
# remove all orphan branches locally
function git-clean() {
	git branch -vv | Where {$_.Contains("gone")} | ForEach -Process { git branch -D $_.Split()[2] }
}