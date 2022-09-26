There are 12 addressing modes on the 6502:

`OPC A`: Accumulator, operand is A register
`OPC $LLHH`: absolute, operand is address 
`OPC $LLHH,X`: absolute X-indexed, operand is address $LLHH with offset in X
`OPC $LLHH,Y`: absolute Y-indexed, operand is address $LLHH with offset in Y
`OPC #$BB`: Immediate, operand is byte
`OPC`: Implied, operand is implied
`OPC ($LLHH)`: Indirect, operand is address of address
`OPC ($LL,X)`: Indexed-Indirect, operand is zero-page address, offset by X, to obtain address of address
`OPC ($LL),Y`: Indirect-Indexed, operand is zero-page address, effective address is word in $LL, $LL+1, then offset by Y
`OPC $BB`: Relative, branch is PC + signed offset $BB
`OPC $LL`: zero-page 
`OPC `

