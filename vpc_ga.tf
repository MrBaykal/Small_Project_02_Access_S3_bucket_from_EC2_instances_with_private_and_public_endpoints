# VPC gateaway endpoint
resource "aws_vpc_endpoint" "vpc_gateaway_endpoint" {
    vpc_id = aws_vpc.main.id
    service_name = "com.amazonaws.us-east-1.s3"
    vpc_endpoint_type = "Gateaway"
    route_table_ids = [aws_route_table.private.id]  
}