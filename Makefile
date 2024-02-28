CC=g++
CFLAGS=-Wall -g
BUILD_DIR=build

# Ensure build directory exists before compilation
$(shell mkdir -p $(BUILD_DIR))

all: $(BUILD_DIR)/max_heap $(BUILD_DIR)/min_heap $(BUILD_DIR)/bt_to_bst $(BUILD_DIR)/reverse_LL $(BUILD_DIR)/mergesort $(BUILD_DIR)/flatten_mll $(BUILD_DIR)/mll_depth $(BUILD_DIR)/root_to_leap

$(BUILD_DIR)/max_heap: BinaryHeap/max_heap.cpp
	$(CC) $(CFLAGS) -o $@ $<

$(BUILD_DIR)/min_heap: BinaryHeap/min_heap.cpp
	$(CC) $(CFLAGS) -o $@ $<

$(BUILD_DIR)/bt_to_bst: BinarySearchTree/bt_to_bst.cpp
	$(CC) $(CFLAGS) -o $@ $<

$(BUILD_DIR)/reverse_LL: LinkedList/reverse_LL.cpp
	$(CC) $(CFLAGS) -o $@ $<

$(BUILD_DIR)/mergesort: MergeSort/mergesort.cpp
	$(CC) $(CFLAGS) -o $@ $<

$(BUILD_DIR)/flatten_mll: MultiLinkedList/flatten_mll.cpp
	$(CC) $(CFLAGS) -o $@ $<

$(BUILD_DIR)/mll_depth: MultiLinkedList/mll_depth.cpp
	$(CC) $(CFLAGS) -o $@ $<

$(BUILD_DIR)/root_to_leap: MultiLinkedList/root_to_leap.cpp
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -rf $(BUILD_DIR)