# # How memory is managed in Python? 

# 1. Private Heap Space
# A private heap is where all Python objects and data structures are kept. The programmer cannot directly access this heap.
# This heap is controlled by the Python memory management, which makes sure that objects are allocated and released effectively.


# 2. Memory Allocation
# The memory manager is a built-in memory allocator in Python. It handles memory allocation for Python objects (data structures, variables, etc.).
# Python employs various techniques based on the kind and size of the object. For instance:
# A specialized allocator, such as PyMalloc, is in charge of managing small objects.
# The system's memory allocation routines, such as C's malloc() and free(), are used directly to allocate large objects.


# 3. Garbage Collection (GC)
# Python utilizes garbage collection to release unused memory.
# Reference counting is the main method used by Python's garbage collector, which additionally has a cyclic garbage collector to handle circular references.

# a. Counting references:
# In Python, the number of references pointing to an object is tracked by its reference count.
# Python automatically releases memory when an object's reference count falls to zero, meaning that there are no references to the object.

# b. Managing Circular References:
# Circular references, in which objects reference one another in a cycle (e.g., A -> B -> A), cannot be handled by reference counting alone.
# To free up memory, Python's garbage collector periodically searches for these cycles and cleans them up.


# 4. Pools of Memory
# Python optimizes memory allocation for small objects (typically up to 512 bytes) by managing memory using pools.
# Pools of memory are created, and these pools are then further subdivided into blocks. Performance is enhanced and fragmentation is reduced as a result.

# 5. Scope and Object Lifetimes
# Python reduces the number of references when an object leaves scope, such as when a function finishes or a variable is no longer required.
# Memory is released to ensure effective memory use if the reference count drops to zero.


# 6. Memory Management by Hand
# The majority of memory management activities are automated by Python, however developers can still control memory consumption using tools like:
# The del keyword reduces an object's reference count and explicitly deletes it.
# More control over garbage collection is possible using the gc module, which lets you manually start, stop, or enable garbage collection.


