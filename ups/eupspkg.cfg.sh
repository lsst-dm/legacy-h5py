config()
{
	# Verify that a compatible module can be found exists
	./scripts/check_python_module -v h5py 2.7.0 | eups_console

	if [[ ${PIPESTATUS[0]} -ne 0 ]]; then
		die "Failed to find a compatible externally provided h5py."
	fi
}

prep() { :; }
build() { :; }
