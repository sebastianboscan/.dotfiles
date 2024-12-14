# Step 1:
linux: clean
	./bin/linux.sh

# Step 2:
clean:
	./bin/cleanup.sh

# Step 3:
chmod +x ./bin/linux.sh
chmod +x ./bin/cleanup.sh
