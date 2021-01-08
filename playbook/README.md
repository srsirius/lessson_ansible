# Самоконтроль выполненения задания

1. Где расположен файл с `some_fact` из второго пункта задания?

/playbook/group_vars/all/example.yml

2. Какая команда нужна для запуска вашего `playbook` на окружении `test.yml`?

ansible-playbook site.yml -i inventory/test.yml

3. Какой командой можно зашифровать файл?

ansible-vault encrypt <filename>

4. Какой командой можно расшифровать файл?

ansible-vault decrypt <filename>

5. Можно ли посмотреть содержимое зашифрованного файла без команды расшифровки файла? Если можно, то как?

ansible-vault view group_vars/el/examp.yml 
Vault password: 
---
  some_fact: "el default fact"


6. Как выглядит команда запуска `playbook`, если переменные зашифрованы?

ansible-playbook site.yml -i inventory/prod.yml --ask-vault-pass
ansible-playbook site.yml -i inventory/prod.yml --vault-password-file <filename>

7. Как называется модуль подключения к host на windows?

winrm        Run tasks over Microsoft's WinRM

8. Приведите полный текст команды для поиска информации в документации ansible для модуля подключений ssh

ansible-doc -t connection -l | grep ssh

9. Какой параметр из модуля подключения `ssh` необходим для того, чтобы определить пользователя, под которым необходимо совершать подключение?

- remote_user
        User name with which to login to the remote server, normally set by the remote_user
        keyword.
        If no user is supplied, Ansible will let the ssh client binary choose the user as it
        normally
        [Default: (null)]
        set_via:
          env:
          - name: ANSIBLE_REMOTE_USER
          ini:
          - key: remote_user
            section: defaults
          vars:
          - name: ansible_user
          - name: ansible_ssh_user



