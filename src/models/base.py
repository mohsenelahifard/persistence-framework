from persistence.state import NewState
class PersistentObject:
    def __init__(self, oid=None):
        self.oid = oid
        self.state = NewState.get_instance()
    def commit(self):
        self.state.commit(self)
    def delete(self):
        self.state.delete(self)
    def rollback(self):
        self.state.rollback(self)
    def save(self):
        self.state.save(self)
    def set_state(self, state):
        self.state = state