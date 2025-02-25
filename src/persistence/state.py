from persistence.facade import PersistenceFacade
class PObjectState:
    def commit(self, obj):
        pass
    def delete(self, obj):
        pass
    def rollback(self, obj):
        pass
    def save(self, obj):
        pass
class NewState(PObjectState):
    _instance = None
    @staticmethod
    def get_instance():
        if NewState._instance is None:
            NewState._instance = NewState()
        return NewState._instance
    def commit(self, obj):
        PersistenceFacade.getInstance().insert(obj)
        obj.set_state(OldCleanState.get_instance())
class OldCleanState(PObjectState):
    _instance = None
    @staticmethod
    def get_instance():
        if OldCleanState._instance is None:
            OldCleanState._instance = OldCleanState()
        return OldCleanState._instance
    def delete(self, obj):
        obj.set_state(OldDeleteState.get_instance())
    def save(self, obj):
        obj.set_state(OldDirtyState.get_instance())
class OldDirtyState(PObjectState):
    _instance = None
    @staticmethod
    def get_instance():
        if OldDirtyState._instance is None:
            OldDirtyState._instance = OldDirtyState()
        return OldDirtyState._instance
    def commit(self, obj):
        PersistenceFacade.getInstance().update(obj)
        obj.set_state(OldCleanState.get_instance())
    def rollback(self, obj):
        PersistenceFacade.getInstance().reload(obj)
        obj.set_state(OldCleanState.get_instance())
    def delete(self, obj):
        obj.set_state(OldDeleteState.get_instance())
class OldDeleteState(PObjectState):
    _instance = None
    @staticmethod
    def get_instance():
        if OldDeleteState._instance is None:
            OldDeleteState._instance = OldDeleteState()
        return OldDeleteState._instance
    def commit(self, obj):
        PersistenceFacade.getInstance().delete(obj)
        obj.set_state(DeletedState.get_instance())
    def rollback(self, obj):
        PersistenceFacade.getInstance().reload(obj)
        obj.set_state(OldCleanState.get_instance())
class DeletedState(PObjectState):
    _instance = None
    @staticmethod
    def get_instance():
        if DeletedState._instance is None:
            DeletedState._instance = DeletedState()
        return DeletedState._instance