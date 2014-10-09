
function fec_encoder_config(this_block)

  % Revision History:
  %
  %   11-Oct-2010  (22:47 hours):
  %     Original code was machine generated by Xilinx's System Generator after parsing
  %     E:\My Dropbox\Project\WARP\Sysgen\Rev4\fec_encoder.v
  %
  %

  this_block.setTopLevelLanguage('Verilog');

  this_block.setEntityName('fec_encoder');

  % System Generator has to assume that your entity  has a combinational feed through; 
  %   if it  doesn't, then comment out the following line:
  this_block.tagAsCombinational;

  this_block.addSimulinkInport('nrst');
  this_block.addSimulinkInport('start');
  this_block.addSimulinkInport('coding_en');
  this_block.addSimulinkInport('pkt_done');
  this_block.addSimulinkInport('fec_rd');
  this_block.addSimulinkInport('info_data');
  this_block.addSimulinkInport('info_scram');
  this_block.addSimulinkInport('info_len');

  this_block.addSimulinkOutport('codeword_len');
  this_block.addSimulinkOutport('info_rd');
  this_block.addSimulinkOutport('info_raddr');
  this_block.addSimulinkOutport('fec_data');

  codeword_len_port = this_block.port('codeword_len');
  codeword_len_port.setType('UFix_16_0');
  info_rd_port = this_block.port('info_rd');
  info_rd_port.setType('Bool');
  info_rd_port.useHDLVector(false);
  info_raddr_port = this_block.port('info_raddr');
  info_raddr_port.setType('UFix_14_0');
  fec_data_port = this_block.port('fec_data');
  fec_data_port.setType('UFix_8_0');

  % -----------------------------
  if (this_block.inputTypesKnown)
    % do input type checking, dynamic output type and generic setup in this code block.

    if (this_block.port('nrst').width ~= 1);
      this_block.setError('Input data type for port "nrst" must have width=1.');
    end

    this_block.port('nrst').useHDLVector(false);

    if (this_block.port('start').width ~= 1);
      this_block.setError('Input data type for port "start" must have width=1.');
    end

    this_block.port('start').useHDLVector(false);

    if (this_block.port('coding_en').width ~= 1);
      this_block.setError('Input data type for port "coding_en" must have width=1.');
    end

    this_block.port('coding_en').useHDLVector(false);

    if (this_block.port('pkt_done').width ~= 1);
      this_block.setError('Input data type for port "pkt_done" must have width=1.');
    end

    this_block.port('pkt_done').useHDLVector(false);

    if (this_block.port('fec_rd').width ~= 1);
      this_block.setError('Input data type for port "fec_rd" must have width=1.');
    end

    this_block.port('fec_rd').useHDLVector(false);

    if (this_block.port('info_data').width ~= 8);
      this_block.setError('Input data type for port "info_data" must have width=8.');
    end

    if (this_block.port('info_scram').width ~= 8);
      this_block.setError('Input data type for port "info_scram" must have width=8.');
    end

    if (this_block.port('info_len').width ~= 16);
      this_block.setError('Input data type for port "info_len" must have width=16.');
    end

  end  % if(inputTypesKnown)
  % -----------------------------

  % -----------------------------
   if (this_block.inputRatesKnown)
     setup_as_single_rate(this_block,'clk','ce')
   end  % if(inputRatesKnown)
  % -----------------------------

    % (!) Set the inout port rate to be the same as the first input 
    %     rate. Change the following code if this is untrue.
    uniqueInputRates = unique(this_block.getInputRates);


  % Add addtional source files as needed.
  %  |-------------
  %  | Add files in the order in which they should be compiled.
  %  | If two files "a.vhd" and "b.vhd" contain the entities
  %  | entity_a and entity_b, and entity_a contains a
  %  | component of type entity_b, the correct sequence of
  %  | addFile() calls would be:
  %  |    this_block.addFile('b.vhd');
  %  |    this_block.addFile('a.vhd');
  %  |-------------

  %    this_block.addFile('');
  %    this_block.addFile('');
  this_block.addFile('fec_encoder.v');

return;


% ------------------------------------------------------------

function setup_as_single_rate(block,clkname,cename) 
  inputRates = block.inputRates; 
  uniqueInputRates = unique(inputRates); 
  if (length(uniqueInputRates)==1 & uniqueInputRates(1)==Inf) 
    block.addError('The inputs to this block cannot all be constant.'); 
    return; 
  end 
  if (uniqueInputRates(end) == Inf) 
     hasConstantInput = true; 
     uniqueInputRates = uniqueInputRates(1:end-1); 
  end 
  if (length(uniqueInputRates) ~= 1) 
    block.addError('The inputs to this block must run at a single rate.'); 
    return; 
  end 
  theInputRate = uniqueInputRates(1); 
  for i = 1:block.numSimulinkOutports 
     block.outport(i).setRate(theInputRate); 
  end 
  block.addClkCEPair(clkname,cename,theInputRate); 
  return; 

% ------------------------------------------------------------

