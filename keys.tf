resource "aws_key_pair" "project1" {
  key_name   = "project1"
  public_key = "${file("/root/.ssh/id_rsa.pub")}"
}

resource "aws_key_pair" "jenkins" {
  key_name = "jenkins"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDUClVu/yX1e/2C6RYJkV93wobjO7P93LwCTTeb0LwF10BjVIECl2Jd7vVjKvitojEuUrYYfm6Gt7w4FYmVcDWjw35TPWf0de3B02uNsvOnIjubPyzpjaEpX9154ZXTtInG92ZilIqCr/zrwU/wNpMiDSHp71TeTvuxcpk/GHnnE3GlE9iNeO3PL2HFdu+kNLxXP71jkQdyZF705HGMaFlCWPCfpP3kwsPsdZyU2hwhvdvoKe0TXrwAJwRPWrMgqW7TogtadVOZg7HiA3g0LRbu9IWX4ADr3WDiPeg/bq+HmiYxBI+A+CL5vVC2T66lL9JsscBPOYj+PMYtKfkANN7x jenkins@jenkins-centos"
}
