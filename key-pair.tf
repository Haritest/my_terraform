resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAs9jC+/F9HP1Gg7G3amuwn7JoRiidviVJ0NMpCnqRZ6c2A7CLCcRWkB5ODzeKjsu9VHlUvu3Sj0V2hXVpXRrofKnpRQ6Wgebbwkpk6Fnr6+oV/NAqOdMcKOyCs61qFu3vb/9EK9TOOihSMSpnPJJyHqB99OtEY70hATQpHLzmjg43siuqvzTQptcGrIYrwNNBhJdyViMiIsH2zvwxvMaARBiqPxQ9vkULuWTrSh7MQW4PCiAw5B5nsLO9IhGW+78tSK48OCkLf4xh3bbJFK58e9XjWAyFBhc9fkpSwNym66+9IRjamAQAzai6QSndEFbw2rgSNxeCRV29L+1HF+cpkw== haridas"
}
