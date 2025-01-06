
class dff_seq_item extends uvm_sequence_item;
  `uvm_object_utils(dff_seq_item) // reg class to uvm factory
  
  rand logic rst;
  rand logic d;
  logic q;
  
  //standard constructor
  function new(string name ="dff_seq_item");
    super.new(name);
    `uvm_info("sequence item Class", "constructor", UVM_MEDIUM)
  endfunction
  
  //no phases
  
  constraint wr_rd_c { rst != 1; }; 
 
endclass
