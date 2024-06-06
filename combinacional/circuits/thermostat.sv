module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 

    wire option1, option2;
    
    assign option1 = mode & too_cold;
    assign option2 = !mode & too_hot;
    
    assign heater 	= option1;
    assign aircon 	= option2;
    
    assign fan = option1 | option2 | fan_on;
    
endmodule