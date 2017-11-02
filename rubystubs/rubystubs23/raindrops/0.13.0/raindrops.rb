=begin
 This is a machine generated stub using stdlib-doc for <b>class Raindrops</b>
 Sources used:  gem raindrops, v. 0.13.0
 Created by IntelliJ Ruby Stubs Generator.
=end

class Raindrops
    # The size of one page of memory for a mmap()-ed Raindrops region.
    # Typically 4096 bytes under Linux.
    PAGE_SIZE = nil #value is unknown, used for indexing.
    # The size (in bytes) of a slot in a Raindrops object.
    # This is the size of a word on single CPU systems and
    # the size of the L1 cache line size if detectable.
    # 
    # Defaults to 128 bytes if undetectable.
    SIZE = nil #value is unknown, used for indexing.
    # The maximum value a raindrop counter can hold
    MAX = nil #value is unknown, used for indexing.
    # Raindrops.new(size)  -> raindrops object
    # 
    # Initializes a Raindrops object to hold +size+ counters.  +size+ is
    # only a hint and the actual number of counters the object has is
    # dependent on the CPU model, number of cores, and page size of
    # the machine.  The actual size of the object will always be equal
    # or greater than the specified +size+.
    def self.new(size)
        #This is a stub, used for indexing
    end
    # rd.incr(index[, number])     -> result
    # 
    # Increments the value referred to by the +index+ by +number+.
    # +number+ defaults to +1+ if unspecified.
    def incr(*args)
        #This is a stub, used for indexing
    end
    # rd.decr(index[, number])     -> result
    # 
    # Decrements the value referred to by the +index+ by +number+.
    # +number+ defaults to +1+ if unspecified.
    def decr(*args)
        #This is a stub, used for indexing
    end
    # rd.to_ary    -> Array
    # 
    # converts the Raindrops structure to an Array
    def to_ary()
        #This is a stub, used for indexing
    end
    # rd[index]    -> value
    # 
    # Returns the value of the slot designated by +index+
    def [] index
        #This is a stub, used for indexing
    end
    # rd[index] = value
    # 
    # Assigns +value+ to the slot designated by +index+
    def []=(index, value)
        #This is a stub, used for indexing
    end
    # rd.size              -> Integer
    # 
    # Returns the number of counters a Raindrops object can hold.  Due to
    # page alignment, this is always equal or greater than the number of
    # requested slots passed to Raindrops.new
    def size()
        #This is a stub, used for indexing
    end
    # rd.size = new_size
    # 
    # Increases or decreases the current capacity of our Raindrop.
    # Raises RangeError if +new_size+ is too big or small for the
    # current backing store
    def size= new_size
        #This is a stub, used for indexing
    end
    # rd.capa              -> Integer
    # 
    # Returns the number of slots allocated (but not necessarily used) by
    # the Raindrops object.
    def capa()
        #This is a stub, used for indexing
    end
    # rd.dup               -> rd_copy
    # 
    # Duplicates and snapshots the current state of a Raindrops object.
    def initialize_copy(p1)
        #This is a stub, used for indexing
    end
    # rd.evaporate!        -> nil
    # 
    # Releases mmap()-ed memory allocated for the Raindrops object back
    # to the OS.  The Ruby garbage collector will also release memory
    # automatically when it is not needed, but this forces release
    # under high memory pressure.
    def evaporate!()
        #This is a stub, used for indexing
    end
end
