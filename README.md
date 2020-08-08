# logger_colorful

A logger formatter wrapper that ANSI-colours messages. Taste best, when used
together with `logger_std_h`.

## Installation

```erlang
{deps, [logger_colorful]}.
```

## Usage

Configure it either in your `sys.config`:

```erlang
[{kernel, [{logger,
            [{handler, default, logger_std_h,
              [{formatter, {logger_colorful_formatter, #{}}}]
             }]
           }]
 }].
```

Or from within application:

```
logger:set_handler_config(default, formatter, {logger_colorful_formatter, #{}}).
```

## License

See [LICENSE](LICENSE).
