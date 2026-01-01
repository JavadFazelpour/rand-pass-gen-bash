#one line bash command to generate a 16 character strong password
```bash
tr -dc 'A-Za-z0-9!@#$%^&*()_+-=[]{};:,.<>?' </dev/urandom | head -c 16
```

If you want it **guaranteed to end with a newline** (nicer for terminal use):

```bash
tr -dc 'A-Za-z0-9!@#$%^&*()_+-=[]{};:,.<>?' </dev/urandom | head -c 16 && echo
```

This uses `/dev/urandom`, filters to a strong mixed charset, and outputs exactly 16 characters.
