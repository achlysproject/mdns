#-*- mode: makefile-gmake -*-
# Copyright (c) 2012-2016 Peter Morgan <peter.james.morgan@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
PROJECT = mdns
PROJECT_DESCRIPTION = Multicast DNS
PROJECT_VERSION = 0.5.0

LOCAL_DEPS = \
	crypto

DEPS = \
	envy

SHELL_OPTS = \
	-boot start_sasl \
	-config dev.config \
	-name $(PROJECT) \
	-s $(PROJECT) \
	-s rb \
	-s sync \
	-setcookie $(PROJECT)

SHELL_DEPS = \
	recon \
	sync

PLT_APPS = \
	any \
	compiler \
	gproc \
	mnesia \
	recon \
	runtime_tools \
	syntax_tools

dep_envy = git https://github.com/shortishly/envy.git master

include erlang.mk
