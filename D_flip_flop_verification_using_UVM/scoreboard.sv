// uvm component class
class dff_scoreboard extends uvm_scoreboard ;
  `uvm_component_utils(dff_scoreboard) // reg class to uvm factory
  
  uvm_analysis_imp#(dff_seq_item, dff_scoreboard) item_collected_export;

  dff_seq_item tx_q[$];

  //standard constructor
  function new(string name ="dff_scoreboard", uvm_component parent);
    super.new(name, parent);
    `uvm_info("scoreboard Class", "constructor", UVM_MEDIUM)
  endfunction
  
    //build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    item_collected_export = new("item_collected_export", this);

  endfunction
  
  // write task - recives the pkt from monitor and pushes into queue
  virtual function void write(dff_seq_item tx);
    //pkt.print();
    tx_q.push_back(tx);
  endfunction
  
  
endclass
