from transactions.commands import DBInsertCommand, DBUpdateCommand, DBDeleteCommand


class Transaction:
    def __init__(self):
        self.commands = []

    def add_insert(self, obj):
        self.commands.append(DBInsertCommand(obj))

    def add_update(self, obj):
        self.commands.append(DBUpdateCommand(obj))

    def add_delete(self, obj):
        self.commands.append(DBDeleteCommand(obj))

    def sort(self):
        self.commands.sort(
            key=lambda cmd: isinstance(cmd, DBInsertCommand), reverse=True
        )

    def commit(self):
        self.sort()
        for cmd in self.commands:
            cmd.execute()
