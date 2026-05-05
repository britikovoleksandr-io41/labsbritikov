
module Ex4_NAND_logic(x3, x2, x1, f_unmin, f_min);
    input x3, x2, x1;
    output f_unmin, f_min;

   
    assign f_unmin = ~( ~(~x3 & ~x2 & x1) & 
                      ~(~x3 & x2 & x1)  & 
                      ~(x3 & ~x2 & x1)  & 
                      ~(x3 & x2 & x1) );

    assign f_min = ~( ~(x1 & x1) & ~(x1 & x1) );

endmodule
