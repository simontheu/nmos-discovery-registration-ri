#!/usr/bin/env bash

# Copyright 2017 British Broadcasting Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install python-pip -y
pip install --upgrade pip

sudo apt-get install libavahi-compat-libdnssd1 -y
pip install -I https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/pybonjour/pybonjour-1.1.1.tar.gz

pip install --no-deps gevent=="1.0.2"
pip install --no-deps greenlet=="0.4.2"
pip install --no-deps gevent-websocket=="0.9.3"
pip install --no-deps six=="1.10.0"
pip install --no-deps flask=="0.10.1"
pip install jinja2=="2.7.2"
pip install --no-deps werkzeug=="0.9.4"
pip install --no-deps itsdangerous=="0.24"
pip install --no-deps socketio-client=="0.5.3"
pip install --no-deps flask-sockets=="0.1"
pip install --no-deps pyzmq=="14.0.1"
pip install --no-deps pygments=="1.6"
pip install --no-deps python-dateutil
pip install --no-deps flask-oauthlib=="0.9.1"
pip install --no-deps ws4py=="0.3.2"
pip install --no-deps requests=="2.2.1"
pip install jsonschema=="2.3.0"
pip install netifaces

apt-get -f install /vagrant-root/nmos-common_0.1.0_all.deb -y
apt-get -f install /vagrant-root/reverse-proxy_0.1.0_all.deb -y
apt-get -f install /vagrant-root/mdns-bridge_0.1.0_all.deb -y
apt-get -f install /vagrant-root/nmos-query_0.1.0_all.deb -y
apt-get -f install /vagrant-root/nmos-registration_0.1.0_all.deb -y
