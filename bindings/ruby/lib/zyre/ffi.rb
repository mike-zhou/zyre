################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################

require 'ffi'

require_relative 'ffi/version'


module Zyre
  module FFI
    extend ::FFI::Library
    
    def self.available?
      @available
    end
    
    begin
      lib_name = 'libzyre'
      lib_paths = ['/usr/local/lib', '/opt/local/lib', '/usr/lib64']
        .map { |path| "#{path}/#{lib_name}.#{::FFI::Platform::LIBSUFFIX}" }
      ffi_lib lib_paths + [lib_name]
      @available = true
    rescue LoadError
      warn ""
      warn "WARNING: ::Zyre::FFI is not available without libzyre."
      warn ""
      @available = false
    end
    
    if available?
      opts = {
        blocking: true  # only necessary on MRI to deal with the GIL.
      }
      
      attach_function :zyre_new, [:string], :pointer, **opts
      attach_function :zyre_destroy, [:pointer], :void, **opts
      attach_function :zyre_uuid, [:pointer], :string, **opts
      attach_function :zyre_name, [:pointer], :string, **opts
      attach_function :zyre_set_header, [:pointer, :string, :string, :varargs], :void, **opts
      attach_function :zyre_set_verbose, [:pointer], :void, **opts
      attach_function :zyre_set_port, [:pointer, :int], :void, **opts
      attach_function :zyre_set_interval, [:pointer, :size_t], :void, **opts
      attach_function :zyre_set_interface, [:pointer, :string], :void, **opts
      attach_function :zyre_set_endpoint, [:pointer, :string, :varargs], :int, **opts
      attach_function :zyre_gossip_bind, [:pointer, :string, :varargs], :void, **opts
      attach_function :zyre_gossip_connect, [:pointer, :string, :varargs], :void, **opts
      attach_function :zyre_start, [:pointer], :int, **opts
      attach_function :zyre_stop, [:pointer], :void, **opts
      attach_function :zyre_join, [:pointer, :string], :int, **opts
      attach_function :zyre_leave, [:pointer, :string], :int, **opts
      attach_function :zyre_recv, [:pointer], :pointer, **opts
      attach_function :zyre_whisper, [:pointer, :string, :pointer], :int, **opts
      attach_function :zyre_shout, [:pointer, :string, :pointer], :int, **opts
      attach_function :zyre_whispers, [:pointer, :string, :string, :varargs], :int, **opts
      attach_function :zyre_shouts, [:pointer, :string, :string, :varargs], :int, **opts
      attach_function :zyre_peers, [:pointer], :pointer, **opts
      attach_function :zyre_own_groups, [:pointer], :pointer, **opts
      attach_function :zyre_peer_groups, [:pointer], :pointer, **opts
      attach_function :zyre_peer_address, [:pointer, :string], :pointer, **opts
      attach_function :zyre_peer_header_value, [:pointer, :string, :string], :pointer, **opts
      attach_function :zyre_socket, [:pointer], :pointer, **opts
      attach_function :zyre_dump, [:pointer], :void, **opts
      attach_function :zyre_version, [:pointer, :pointer, :pointer], :void, **opts
      attach_function :zyre_test, [:bool], :void, **opts
      
      require_relative 'ffi/zyre'
    end
  end
end

################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################
