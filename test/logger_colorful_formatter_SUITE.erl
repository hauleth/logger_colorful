-module(logger_colorful_formatter_SUITE).

-compile(export_all).

-include_lib("stdlib/include/assert.hrl").
-include_lib("common_test/include/ct.hrl").

all() -> [check_config].

check_config(_Config) ->
    ok = logger_colorful_formatter:check_config(#{}),
    ok = logger_colorful_formatter:check_config(#{colors => #{}}),
    ok = logger_colorful_formatter:check_config(#{colors => #{info => blue}}),
    ok = logger_colorful_formatter:check_config(#{colors => #{info => {bg, blue}}}),
    ok = logger_colorful_formatter:check_config(#{colors => #{info => {fg, bright, blue}}}),
    {error, _} = logger_colorful_formatter:check_config(#{colors => #{foo => blue}}),
    {error, _} = logger_colorful_formatter:check_config(#{colors => #{info => foo}}).
