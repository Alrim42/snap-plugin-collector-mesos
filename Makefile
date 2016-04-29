default:
	$(MAKE) clean
	$(MAKE) deps
	$(MAKE) all
clean:
	-rm -rf build/
	-rm -rf vendor/
	-rm -rf Godeps/_workspace
	-rm -rf tmp/
	-rm -rf profile.cov
deps:
	bash -c "godep restore"
test:
	bash -c "./scripts/test.sh $(TEST)"
check:
	$(MAKE) test
all:
	bash -c "./scripts/build.sh $(PWD)"
