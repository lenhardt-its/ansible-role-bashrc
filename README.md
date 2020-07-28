# Ansible Role: Bashrc

[![License](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg)](https://opensource.org/licenses/MIT)
[![GitHub tag](https://img.shields.io/github/tag/OnkelDom/ansible-role-bashrc.svg)](https://github.com/OnkelDom/ansible-role-bashrc/tags)
[![GitHub issues](https://img.shields.io/github/issues/OnkelDom/ansible-role-bashrc)](https://github.com/OnkelDom/ansible-role-bashrc/issues)
[![GitHub license](https://img.shields.io/github/license/OnkelDom/ansible-role-bashrc)](https://github.com/OnkelDom/ansible-role-bashrc/blob/master/LICENSE)

## Description

Setup bash with powerline-go for alle users on system and .dot files for root

## Requirements

- Ansible >= 2.5 (It might work on previous versions, but we cannot guarantee it)

## Role Variables

All variables which can be overridden are stored in [defaults/main.yml](defaults/main.yml) file as well as in table below.

| Name           | Default Value | Description                        |
| -------------- | ------------- | -----------------------------------|
| `proxy_env` | {} | Set proxy environment. |
| `bashrc_powerline_go_version` | 1.17.0 | Set powerline-go version [Powerline-Go](https://github.com/justjanne/powerline-go) |
| `bashrc_profiled_scripts` | [ powerline-prompt.sh, ssh-agent.sh ] | Set /etc/profile.d/<file> scripts from files folder. |
| `bashrc_root_dot_files` | [ ms.sh, tmux.conf ,vimrc ] | Set root .dot file from files folder |
| `bashrc_profiled_scripts_extra` | [] | Set extra /etc/profile.d/<file> scripts from files folder. |
| `bashrc_root_dot_files_extra` | [] | Set extra root .dot file from files folder |

## Example

```yaml
proxy_env: {}
bashrc_powerline_go_version: 1.17.0
bashrc_profiled_scripts:
  - powerline-prompt.sh
  - ssh-agent.sh
bashrc_root_dot_files:
  - ms.sh
  - tmux.conf
  - vimrc
bashrc_profiled_scripts_extra: []
bashrc_root_dot_files_extra: []
```

### Playbook

```yaml
- hosts: all
  roles:
    - onkeldom.ansible-role-bashrc
  vars:
```

## Contributing

See [contributor guideline](CONTRIBUTING.md).

## License

This project is licensed under MIT License. See [LICENSE](/LICENSE) for more details.
