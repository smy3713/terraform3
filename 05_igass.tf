resource "aws_route_table_association" "smy_igas_puba" {
  subnet_id = aws_subnet.smy_puba.id
  route_table_id = aws_route_table.smy_rt.id
}

resource "aws_route_table_association" "smy_igas_pubc" {
  subnet_id = aws_subnet.smy_pubc.id
  route_table_id = aws_route_table.smy_rt.id
}