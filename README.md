# easy-script

Collection de petits scripts d'automatisation pour simplifier les tâches quotidiennes.

## Structure

```
easy-script/
├── setup.sh              # Installation des scripts
└── ssh/
    └── add-ssh-bashrc.sh # Configuration SSH automatique
```

## Installation

```bash
./setup.sh
```

## Scripts

### setup-ssh

Configure automatiquement l'agent SSH au démarrage du terminal.

```bash
setup-ssh ~/.ssh/your-key
```

Ajoute la clé SSH spécifiée à `.bashrc` pour qu'elle soit chargée automatiquement à chaque session.

### add-ssh-bashrc.sh

Script interne utilisé par `setup-ssh`. Démarre l'agent SSH si nécessaire et charge la clé fournie.
