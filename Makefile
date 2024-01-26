EXTENSION  = click
PG_CONFIG ?= pg_config
DATA       = sql/click--1.0.0.sql
MODULEDIR  = extension/click

PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
