resource "aws_key_pair" "swarmKeyPair" {
    key_name = "swarmKeyPair"
    public_key = "${file("${var.SWARM_PUB_KEY}")}"
}
