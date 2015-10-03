#
# Cookbook Name:: etcd
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

gi "etcd" do
  repo node["etcd"]["repo"]
  revision node["etcd"]["revision"]

  build_cmd "./build"
  binaries ["etcd", "etcdctl"]
  output_dir "./bin"
end
