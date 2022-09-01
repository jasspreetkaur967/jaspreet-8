
resource "aws_instance" "web" {
    count = length(var.tag_name)
  ami           = "ami-052efd3df9dad4825"
  instance_type = var.ins_type

  tags = {
    Name = var.tag_name[count.index]
    owner = "jaspreet.kaur@cloudeq.com"
    purpose = "training"
  }
}
resource "aws_instance" "web1" {
    for_each = var.tag_name2
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"


  tags = {
    Name = each.key
    owner = "jaspreet.kaur"
    purpose = "test"
  }
}