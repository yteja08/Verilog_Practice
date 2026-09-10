module function_and (

    input  a,
    input  b,
    output y

);

function and_operation;

    input a_in;
    input b_in;

    begin
        and_operation = a_in & b_in;
    end

endfunction

assign y = and_operation ( a, b);

endmodule
