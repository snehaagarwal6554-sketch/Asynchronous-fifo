module asyn_fifo(wr_clk,rd_clk,rst,wr_en,rd_en,din,dout,full,empty);
  input wr_clk,rd_clk,rst,wr_en,rd_en;
  input [DATA_WIDTH-1:0] din;
  output reg [DATA_WIDTH-1:0] dout;
  output full,empty;
  parameter DATA_WIDTH=8;
  parameter DEPTH=8;
  parameter ADDR_WIDTH=3;
  reg [ADDR_WIDTH:0] wr_ptr;
  reg [ADDR_WIDTH:0] rd_ptr;
  reg [DATA_WIDTH-1:0] mem[0:DEPTH-1];
  always @(posedge wr_clk or posedge rst)
    begin
      if(rst)
        wr_ptr<=0;
      else if(wr_en && !full)
        begin
          mem[wr_ptr[ADDR_WIDTH-1:0]]<=din;
          wr_ptr<=wr_ptr+1;
        end
    end
  always @(posedge rd_clk or posedge rst)
    begin
      if (rst)
        rd_ptr<=0;
      else if(rd_en && !empty)
        begin
          dout<=mem[rd_ptr[ADDR_WIDTH-1:0]];
          rd_ptr<=rd_ptr+1;
        end
    end
  assign empty=(wr_ptr==rd_ptr);
  assign full=((wr_ptr-rd_ptr)==DEPTH);
endmodule
