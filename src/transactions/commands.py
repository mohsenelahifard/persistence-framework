from persistence.facade import PersistenceFacade


class ICommand:
    def execute(self):
        raise NotImplementedError

    def undo(self):
        raise NotImplementedError


class DBCommand(ICommand):
    def __init__(self, obj):
        self.object = obj

    def execute(self):
        raise NotImplementedError

    def undo(self):
        pass


class DBInsertCommand(DBCommand):
    def execute(self):
        PersistenceFacade.getInstance().insert(self.object)


class DBUpdateCommand(DBCommand):
    def execute(self):
        PersistenceFacade.getInstance().update(self.object)


class DBDeleteCommand(DBCommand):
    def execute(self):
        PersistenceFacade.getInstance().delete(self.object)
