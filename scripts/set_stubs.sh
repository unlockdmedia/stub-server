#!/bin/bash

stubby -d ${STUB_DATA:-/scripts/example.yml} -a ${ADMIN_PORT:-8889} -s ${STUB_PORT:-8882}