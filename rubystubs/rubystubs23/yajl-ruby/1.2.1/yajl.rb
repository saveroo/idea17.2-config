=begin
 This is a machine generated stub using stdlib-doc for <b>module Yajl</b>
 Sources used:  gem yajl-ruby, v. 1.2.1
 Created by IntelliJ Ruby Stubs Generator.
=end

# Ruby Extension initializer   
module Yajl
    MAX_DEPTH = nil #value is unknown, used for indexing.
    class EncodeError < StandardError
    end
    # This class contains methods for encoding a Ruby object into JSON, streaming it's output into an IO object.
    # The IO object need only respond to #write(str)
    # The JSON stream created is written to the IO in chunks, as it's being created.
    class Encoder
        # new([:symbolize_keys => true, [:allow_comments => false[, :check_utf8 => false]]])
        # 
        # :symbolize_keys will turn hash keys into Ruby symbols, defaults to false.
        # 
        # :allow_comments will turn on/off the check for comments inside the JSON stream, defaults to true.
        # 
        # :check_utf8 will validate UTF8 characters found in the JSON stream, defaults to true.
        def self.new(p1 = v1)
            #This is a stub, used for indexing
        end
        # encode(obj[, io[, &block]])
        # 
        # +obj+ is the Ruby object to encode to JSON
        # 
        # +io+ is an optional IO used to stream the encoded JSON string to.
        # If +io+ isn't specified, this method will return the resulting JSON string. If +io+ is specified, this method returns nil
        # 
        # If an optional block is passed, it's called when encoding is complete and passed the resulting JSON string
        # 
        # It should be noted that you can reuse an instance of this class to continue encoding multiple JSON
        # to the same stream. Just continue calling this method, passing it the same IO object with new/different
        # ruby objects to encode. This is how streaming is accomplished.
        def encode(p1, p2 = v2, &block)
            #This is a stub, used for indexing
        end
        # on_progress = Proc.new {|str| ...}
        # 
        # This callback setter allows you to pass a Proc/lambda or any other object that responds to #call.
        # 
        # It will pass the caller a chunk of the encode buffer after it's reached it's internal max buffer size (defaults to 8kb).
        # For example, encoding a large object that would normally result in 24288 bytes of data will result in 3 calls to this callback (assuming the 8kb default encode buffer).
        def on_progress=(p1)
            #This is a stub, used for indexing
        end
        # enable_json_gem_compatability
        # 
        # Enables the JSON gem compatibility API
        def self.enable_json_gem_compatability()
            #This is a stub, used for indexing
        end
    end
    class ParseError < StandardError
    end
    # This class contains methods for parsing JSON directly from an IO object.
    # The only basic requirment currently is that the IO object respond to #read(len) and #eof?
    # The IO is parsed until a complete JSON object has been read and a ruby object will be returned.
    class Parser
        # new([:symbolize_keys => true, [:allow_comments => false[, :check_utf8 => false]]])
        # 
        # :symbolize_keys will turn hash keys into Ruby symbols, defaults to false.
        # 
        # :allow_comments will turn on/off the check for comments inside the JSON stream, defaults to true.
        # 
        # :check_utf8 will validate UTF8 characters found in the JSON stream, defaults to true.
        def self.new(p1 = v1)
            #This is a stub, used for indexing
        end
        # parse(input, buffer_size=8092)
        # parse(input, buffer_size=8092) { |obj| ... }
        # 
        # +input+ can either be a string or an IO to parse JSON from
        # 
        # +buffer_size+ is the size of chunk that will be parsed off the input (if it's an IO) for each loop of the parsing process.
        # 8092 is a good balance between the different types of streams (off disk, off a socket, etc...), but this option
        # is here so the caller can better tune their parsing depending on the type of stream being passed.
        # A larger read buffer will perform better for files off disk, where as a smaller size may be more efficient for
        # reading off of a socket directly.
        # 
        # If a block was passed, it's called when an object has been parsed off the stream. This is especially
        # usefull when parsing a stream of multiple JSON objects.
        # 
        # NOTE: you can optionally assign the +on_parse_complete+ callback, and it will be called the same way the optional
        # block is for this method.
        def parse(*several_variants)
            #This is a stub, used for indexing
        end
        # parse_chunk(string_chunk)
        # 
        # +string_chunk+ can be a partial or full JSON string to push on the parser.
        # 
        # This method will throw an exception if the +on_parse_complete+ callback hasn't been assigned yet.
        # The +on_parse_complete+ callback assignment is required so the user can handle objects that have been
        # parsed off the stream as they're found.
        def parse_chunk(string_chunk)
            #This is a stub, used for indexing
        end
        # parse_chunk(string_chunk)
        # 
        # +string_chunk+ can be a partial or full JSON string to push on the parser.
        # 
        # This method will throw an exception if the +on_parse_complete+ callback hasn't been assigned yet.
        # The +on_parse_complete+ callback assignment is required so the user can handle objects that have been
        # parsed off the stream as they're found.
        def <<(p1)
            #This is a stub, used for indexing
        end
        # on_parse_complete = Proc.new { |obj| ... }
        # 
        # This callback setter allows you to pass a Proc/lambda or any other object that responds to #call.
        # 
        # It will pass a single parameter, the ruby object built from the last parsed JSON object
        def on_parse_complete=(p1)
            #This is a stub, used for indexing
        end
    end
end
