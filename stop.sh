#!/bin/bash

docker ps | grep lukas1818/stubby | awk '{print $1}' | xargs docker kill
