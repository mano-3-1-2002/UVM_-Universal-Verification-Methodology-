
class dff_seq_item extends uvm_sequence_item;
  `uvm_object_utils(dff_seq_item)
  // reg class to uvm factory
  rand logic d;
  logic rst;
  //logic clk; no need because we gave in interface
  logic q;
  
  function new(string name = "dff_seq_item");
    super.new(name);
    'uvm_info("sequence item class","constructor",UVM_MEDIUM)
  endfunction
  //no phases
endclass
