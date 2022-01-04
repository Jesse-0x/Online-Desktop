#!/bin/bash
set -ex
supervisord -c /app/supervisord.conf
