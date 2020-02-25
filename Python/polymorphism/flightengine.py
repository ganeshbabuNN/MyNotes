class Flight:
    def __init__(self,engine):
        self.engine=engine
        
    def startEngine(self):
        self.engine.start();
        
class AirbusEngine:
    def start(self):
        print("Starting Airbus engine")

class BoingEngine:
    def start(self):
        print("Starting BoingEngine engine")
        
ae = AirbusEngine()
f = Flight(ae)
f.startEngine()

be = BoingEngine()
f1 = Flight(be)
f1.startEngine()