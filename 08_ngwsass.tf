resource "aws_route_table_association" "smy_ngwass_pria" {
  subnet_id = aws_subnet.smy_pria.id
  route_table_id = aws_route_table.smy_ngwrt.id
}

resource "aws_route_table_association" "smy_ngwass_pric" {
  subnet_id = aws_subnet.smy_pric.id
  route_table_id = aws_route_table.smy_ngwrt.id
}

resource "aws_route_table_association" "smy_ngwass_pridba" {
  subnet_id = aws_subnet.smy_pridba.id
  route_table_id = aws_route_table.smy_ngwrt.id
}

resource "aws_route_table_association" "smy_ngwass_pridbc" {
  subnet_id = aws_subnet.smy_pridbc.id
  route_table_id = aws_route_table.smy_ngwrt.id
}